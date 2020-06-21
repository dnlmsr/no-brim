#include <Arduino.h>
/**Struttura task.
 * La struttura definisce tutte le funzioni necessarie al corretto
 * funzionamento di un task.
 */
struct TaskStruct {
  unsigned long lastExecutionTime;    //!<Istante dell'ultima esecuzione
  unsigned long timeCycle_ms;         //!<Tempo di ciclo previsto del task \f$[ms]\f$
  bool enable = 1;                    //!<Abilitazione task


  /**Inizializzazione task.
   * Per inizializzare il task è necessario inserire il parametro
   * di frequenza necessario. La funzione calcola in automatico il tempo ciclo
   * del task.
   * \param freqCycle Frequenza del ciclo del task \f$[Hz]\f$.
   */
  void init(float freqCycle) {
    lastExecutionTime = 0;
    timeCycle_ms = long(1000 / freqCycle);
  }


  /**Verifica esecuzione task.
   * La funzione verifica se il task deve essere eseguito controllando il
   * tempo trascorso dall'ultima attivazione del task.
   * \param timeNow_ms Istante attuale \f$[ms]\f$.
   */
  bool toDoTask(unsigned long timeNow_ms) {
    if ((timeNow_ms - lastExecutionTime >= timeCycle_ms) && enable) {
      lastExecutionTime = timeNow_ms;
      return true;
    }
    return false;
  }

  ///Abilita il task.
  void task_en() {
    enable = true;
  }

  ///Disabilita il task.
  void task_dis() {
    enable = false;
  }
};
