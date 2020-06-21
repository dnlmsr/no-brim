#include <Arduino.h>
/**Struttura pisotni
 * La struttura definisce tutte le funzioni necessarie per
 * il corretto funzionamento dei pistoni.
 * Viene utilizzato un sistema di variabili per input e output
 * sulle quali verranno rispettivamente scritti i valori
 * in ingresso e letti i valori delle uscite,
 * questo per non sovraccaricare il sistema ogni volta che
 * si richiama la funzione digitalWrite o digitalRead.
 */
struct PistonStruct {
  int extensionPin;         ///< Pin OUTPUT estensione
  int retractionPin;        ///< Pin OUTPUT ritrazione
  int extensionFC;          ///< Fine corsa posizione estenso
  int retractionFC;         ///< Fine corsa posizione ritratto
  bool retractionState;  ///< Verifica finecorsa posizione ritratto
  bool extensionState;   ///< Verifica finecorsa posizione esteso
  bool ext;              ///< Stato uscita estensione pistone
  bool ret;              ///< Stato uscita ritrazione pistone


  /**Inizializza variabili.
   * La funzione inizializza le principali variabili come
   * i pin di INPUT e OUTPUT.
   * \param ExtensionPin Pin OUTPUT per estensione pistone.
   * \param RetractionPin Pin OUTPUT per ritrazione pistone.
   * \param ExtensionFC Pin INPUT del finecorsa posizione esteso.
   * \param RetractionFC Pin INPUT del finecorsa posizione ritratto.
   */
  void init (int ExtensionPin, int RetractionPin, int ExtensionFC, int RetractionFC) { //
    extensionPin = ExtensionPin;
    extensionFC = ExtensionFC;
    retractionFC = RetractionFC;
    retractionPin = RetractionPin;

    pinMode (extensionPin, OUTPUT);
    pinMode (retractionPin, OUTPUT);
    pinMode (extensionFC, INPUT);
    pinMode (retractionFC, INPUT);
  }


  /**Lettura ingressi.
   * La funzione richiama due `digitalRead()` per la lettura
   * dei due finecorsa relativi al pistone.
   */
  void read() {
    extensionState = digitalRead(extensionFC);
    if (retractionPin)retractionState = digitalRead(retractionFC);
    else retractionState = !extensionState;
  }

  /**Scrittura uscite.
   * La funzione richiama due `digitalWrite()` per la scrittura
   * delle due uscite relative al pistone. Nel caso in cui si
   * tratti di un pistone monostabile, viene ignorato il pin
   * di ritrazione.
   */
  void write() {
    digitalWrite(extensionPin, ext);
    if (retractionPin) digitalWrite(retractionPin, ret);
  }


  /**Spegne tutte le uscite.
   * Spegne tutte le uscite del pistone. Nel caso di un pistone
   * monostabile, questo ritorna alla sua posizione di riposo.
   */
  void off() {
    ext = 0;
    ret = 0;
  }


  /**Scrittura variabili per estensione.
   * Scrittura variabili per la corretta esecuzione di
   * un'estensione. Non viene direttamente cambiato l'OUTPUT
   * in quanto questo viene eseguito nella funzione @ref write.
   */
  void extend() {
    ext = 1;
    ret = 0;
  }


  /**Scrittura variabili per ritrazione.
   * Scrittura variabili per la corretta esecuzione di
   * una ritrazione. Non viene direttamente cambiato l'OUTPUT
   * in quanto questo viene eseguito nella funzione @ref write.
   */
  void retract() {
    ext = 0;
    ret = 1;
  }
};
