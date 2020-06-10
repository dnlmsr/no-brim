//#include <Arduino.h>

//!Struttura calcolo lavoro
/*!La struttura calcola il lavoro svolto dalla CPU per
   determinare se il sistema è real-time oppure troppo
   carico.
*/
struct measureTimingStruct {
  unsigned long StartTime;          //!<Istante inizio misura \f$[\mu s]\f$
  unsigned long StopTime;           //!<Istante fine misura \f$[\mu s]\f$
  unsigned long deltaTime;          //!<\f$\delta t\f$ rilevato \f$[\mu s]\f$
  unsigned long deltaTimeMax;       //!<\f$\delta t_{max}\f$ necessario \f$[\mu s]\f$


  //!Inizializza struttura
  /*!La struttura calcola il \f$\delta t_{max}\f$ data la frequenza massima
     come argomento.
     \param maxFreq Frequenza massima da rispettare
  */
  void CPU_LOAD_init(unsigned long maxFreq) {
    deltaTimeMax = 1000000 / maxFreq;
  }


  //!Calcolo lavoro CPU
  /*!La funzione caclcola il lavoro svolto dalla CPU. Data la formula:
     \f[CPU_{load}\%=\frac{\delta t}{\delta t_{max}}\cdot 100\f]
  */
  float CPU_LOAD(void) {
    float load = ((float)deltaTime / (float)deltaTimeMax) * 100;  //Calcolo dell'utilizzo della CPU
    deltaTime = 0;                                                //Reset variabile
    return load;
  }


  //!Inizio misura
  void startMeasure(unsigned long time) {
    StartTime = time;
  }


  //!Fine misura
  /*!Fine misura e calcolo \f$\delta t\f$*/
  void endMeasure(unsigned long time) {
    StopTime = time;
    deltaTime = StopTime - StartTime;
  }
};
