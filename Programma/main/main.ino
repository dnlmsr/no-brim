/*******************************
 * \mainpage no-brim
 * \section Introduzione
 * no-brim è il progetto di una macchina atta al taglio
 * automatico di tubi in PVC o altri materiali plastici.
 * \section Codice
 * Il codice è stato realizzato con un sistema a task, dove ogni
 * task esegue una funzione specifica come il controllo degli
 * I/O oppure del ciclogramma.
 *
 * \authors Daniele Moser <mailto:dnlmsr0@gmail.com>
 * \authors Francesco Maraner <mailto:francesco.maraner@marconirovereto.it>
 * \authors Michele Mattè <mailto:michele.matte@marconirovereto.it>
 *******************************/

#include "task.cpp"
#include "piston.cpp"
#include "CPUload.cpp"
#include "PID.cpp"

#define MAX_M1_VALUE 0 ///< Valore minimo asse lineare.
#define MIN_M1_VALUE 500 ///< Valore massimo asse lineare.

//Definizione input
#define I_1B1 2 ///< Finecorsa 1M1 retratto.
#define I_1B2 3 ///< Finecorsa 1M1 esteso.
#define I_2B1 4 ///< Finecorsa 2M1 retratto.
#define I_2B2 5 ///< Finecorsa 2M1 esteso.
#define I_3B1 6 ///< Finecorsa 3MX retratto.
#define I_3B2 7 ///< Finecorsa 3MX esteso.
#define I_4B1 8 ///< Finecorsa 4M1 retratto.
#define I_4B2 9 ///< Finecorsa 4M1 esteso.
#define I_B1 10 ///< Sensore di presenza B1.
#define I_B2 11 ///< Sensore di presenza B2.
#define I_B3 12 ///< Sensore di presenza B3.
#define I_EM1 13 ///< Encoder motore M1.
#define I_START 14 ///< Pulsante START.
#define I_STOP 15 ///< Pulsante STOP.
#define I_RESET 16 ///< Pulsante RESET.
#define I_EMG 17 ///< Pulsante di emergenza.

//Definizione output
#define O_1M1 18 ///< Output valvola 1M1.
#define O_2M1 19 ///< Output valvola 2M1.
#define O_3M1 20 ///< Output valvola 3M1.
#define O_3M2 21 ///< Output valvola 3M2.
#define O_4M1 22 ///< Output valvola 4M1.
#define O_M1 23 ///< Output motore asse lineare M1.
#define O_M2 24 ///< Output motore lama M2.

//Definizione variabili globali
int SFCstate; ///< Variabile di stato del sistema.
int SFCerror; ///< Variabile errore del sistema.
int V_EM1; ///< Valore encoder motore M1.
int cuttingMeasure; ///< Misura taglio del tubo.
int cuttingRemaining; ///< Rimanenza spostamento del tubo.

/// Lista dei task.
enum taskIndex {
                TASK_INTEGRITY, ///< Task per verificare l'integrità del sistema.
                TASK_PID, ///< Task di calcolo del PID.
                TASK_SFC, ///< Task del programma SFC.
                TASK_UI, ///< Task dell'interfaccia utente per il controllo.
                TASK_SERIAL, ///< Task gestione della seriale.
                TASK_MAX,
};

/// Lista dei pistoni.
enum pistonIndex {
                  PIST_1M1,
                  PIST_2M1,
                  PIST_3MX,
                  PIST_4M1,
                  PIST_MAX,
};

/// Lista degli stati SFC.
enum SFCstates {
                SFC_EMERGENCY,
                SFC_STOP,
                SFC_CALIBRATION,
                SFC_MOVE_PREP,
                SFC_MOVE_FRONT,
                SFC_MOVE_BACK,
                SFC_STOP_TUBE,
                SFC_CUT,
                SFC_STOP_CUT,
                SFC_EXPULSION,
};

struct TaskStruct tasks[TASK_MAX]; ///< Vettore dei task.
struct measureTimingStruct measureTiming; ///< Oggetto misura delle tempistiche.
struct PistonStruct pistons[PIST_MAX]; ///< Vettore dei pistoni.
struct PID PIDasse; ///< Oggeto PID.

int function_taskIntegrity(void);
int function_taskPID(void);
int function_taskSFC(void);
int function_taskUI(void);
int function_taskSerial(void);

void setup () {
  tasks[TASK_INTEGRITY].init(20);
  tasks[TASK_PID].init(20);
  tasks[TASK_SFC].init(20);
  tasks[TASK_UI].init(20);
  tasks[TASK_SERIAL].init(10);

  PIDasse.init(1,1,1,255,0);
  Serial.begin(38400);

  SFCstate = 0;

  //Iinizializzazione I/O.
  pinMode(2, INPUT);
  pinMode(3, INPUT);
  pinMode(4, INPUT);
  pinMode(5, INPUT);
  pinMode(6, INPUT);
  pinMode(7, INPUT);
  pinMode(8, INPUT);
  pinMode(9, INPUT);
  pinMode(10, INPUT);
  pinMode(11, INPUT);
  pinMode(12, INPUT);
  pinMode(13, INPUT);
  pinMode(14, INPUT);
  pinMode(15, INPUT);
  pinMode(16, INPUT);
  pinMode(17, INPUT);

  pinMode(18, OUTPUT);
  pinMode(19, OUTPUT);
  pinMode(20, OUTPUT);
  pinMode(21, OUTPUT);
  pinMode(22, OUTPUT);
  pinMode(23, OUTPUT);
  pinMode(24, OUTPUT);

  //Inizializzazione pistoni.
  pistons[PIST_1M1].init(O_1M1,0,I_1B2,I_1B1);
  pistons[PIST_2M1].init(O_2M1,0,I_2B2,I_2B1);
  pistons[PIST_3MX].init(O_3M1,O_3M2,I_3B1,I_3B2);
  pistons[PIST_4M1].init(O_4M1,0,I_4B1,I_4B2);

  cuttingMeasure = 750;
  cuttingRemaining = cuttingMeasure;
}


void loop () {

  measureTiming.startMeasure(micros());

  long timeNow = millis();

  if (tasks[TASK_INTEGRITY].toDoTask(timeNow)) function_taskIntegrity();
  if (tasks[TASK_PID].toDoTask(timeNow)) function_taskPID();
  if (tasks[TASK_SFC].toDoTask(timeNow)) function_taskSFC();
  if (tasks[TASK_UI].toDoTask(timeNow)) function_taskUI();
  if (tasks[TASK_SERIAL].toDoTask(timeNow)) function_taskSerial();

  measureTiming.endMeasure(micros());
}

int function_taskIntegrity () {}
int function_taskPID () {}

/**Funzione degli stati macchina (SFC).
 *La funzione contiene il programma della macchina
 *in un codice che descrive i vari stati e le transizioni
 */
int function_taskSFC () {
  switch(SFCstate){

    /**Stato di emergenza.
     *Tutti i pistoni sono spenti. La transizione richiede
     *la pressione del pulsante RESET per passare allo
     *stato di stop.
     */
  case SFC_EMERGENCY:
    for(byte i = 0; i<PIST_MAX; i++) pistons[i].off();
    if (digitalRead(I_RESET)){
      SFCstate=SFC_STOP;
      SFCerror=0;
    }
    break;

    /**Stato di stop.
     *Tutti i pistoni sono spenti. La transizione richiede
     *la pressione del pulsante START per passare allo stato
     *di calibrazione della macchina.
     */
  case SFC_STOP:
    for(byte i = 0; i<PIST_MAX; i++) pistons[i].off();
    if (digitalRead(I_START)){
      SFCstate=SFC_CALIBRATION;
      SFCerror=0;

      int movingMeasure;
      if (cuttingRemaining >= MAX_M1_VALUE) movingMeasure = MAX_M1_VALUE;
      else movingMeasure = cuttingRemaining;
      cuttingRemaining -= movingMeasure;
      PIDasse.setSetPoint(MAX_M1_VALUE);
    }
    break;

    /** Stato di calibrazione.
     * La macchina viene calbrata, ovvero 1M1 e 3MX si ritraggono,
     * mentre 2M1 e 4M1 si estendono. L'asse lineare si sposta
     * nella posizione più lontana dalla lama. La transizione
     * richiede che tutte le movimentazioni siano in posizione per
     * passare allo stato di preparazione alla movimentazione.
     */
  case SFC_CALIBRATION:
    pistons[PIST_2M1].extend();
    pistons[PIST_1M1].retract();
    pistons[PIST_3MX].retract();
    pistons[PIST_4M1].extend();
    analogWrite(O_M1, PIDasse.compute(V_EM1,millis()));
    if (pistons[PIST_2M1].extensionState && pistons[PIST_1M1].retractionState && pistons[PIST_3MX].retractionState && pistons[PIST_2M1].extensionState && PIDasse.setPointReached){
      SFCstate = SFC_MOVE_PREP;
    }
    break;

    /** Stato preparazione movimentazione.
     * Il pistone 1M1 si estende mentre il pistone 2M1 si ritrae.
     * La transizione richiede che la pinza movimentata sia in posizione.
     */
  case SFC_MOVE_PREP:
    pistons[PIST_2M1].retract();
    pistons[PIST_1M1].extend();
    if (pistons[PIST_2M1].retractionState && pistons[PIST_1M1].extensionState){
      SFCstate=SFC_MOVE_FRONT;
      PIDasse.setSetPoint(MIN_M1_VALUE);
    }
    break;

    /** Stato movimentazione in avanti.
     * L'asse si muove verso la lama fino a raggiungere
     * la fine della sua corsa.
     */
  case SFC_MOVE_FRONT:
    analogWrite(O_M1, PIDasse.compute(V_EM1,millis()));
    if (PIDasse.setPointReached){
      SFCstate=SFC_STOP_TUBE;
    }
    break;

    /** Stato blocco del tubo.
     * Viene bloccato il tubo tramite il pistone 2M1.
     */
  case SFC_STOP_TUBE:
    pistons[PIST_2M1].extend();
    if (pistons[PIST_2M1].extensionState){
      if (cuttingRemaining == 0) SFCstate= SFC_CUT;
      else {
        int movingMeasure;
        if (cuttingRemaining >= MAX_M1_VALUE) movingMeasure = MAX_M1_VALUE;
        else movingMeasure = cuttingRemaining;
        cuttingRemaining -= movingMeasure;
        PIDasse.setSetPoint(movingMeasure);
        SFCstate=SFC_CALIBRATION;
      }
    }
    break;

    /** Stato taglio del tubo.
     * Il tubo viene tagliato con il motore lama M2 e il
     * pistone 3MX. La transizione richiede il taglio completo
     * del tubo, ovvero che il pistone 3MX raggiunga la fine
     * della sua corsa.
     */
  case SFC_CUT:
    digitalWrite(O_M2,1);
    pistons[PIST_3MX].extend();
    if(pistons[PIST_3MX].extensionState){
      digitalWrite(O_M2,0);
      SFCstate=SFC_STOP_CUT;
    }
    break;

    /** Stato fine taglio.
     * La lama viene fermata e il pistone 3MX si ritrae.
     * La transizione richiede che il pistone 3MX raggiunga
     * la fine della sua corsa.
     */
  case SFC_STOP_CUT:
  pistons[PIST_3MX].retract();
  if(pistons[PIST_3MX].retractionState){
    SFCstate=SFC_EXPULSION;
  }
    break;

    /** Stato espulsione pezzo.
     * Il pezzo viene espulso tramite il pistone 4M1.
     * La transizione richiede che il pistone 4M1 torni
     * a riposo.
     */
  case SFC_EXPULSION:
  pistons[PIST_4M1].extend();
  if(pistons[PIST_4M1].extensionState){
    SFCstate=SFC_CALIBRATION;
  }
  break;
  }
}


int function_taskUI () {}
int function_taskSerial () {}
