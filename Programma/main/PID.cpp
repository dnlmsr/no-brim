#include <Arduino.h>
#define MAX_ERROR 1
//!Struttura calcolo PID
/*!La struttura è un calcolatore PID generico*/
struct PID {
  float Kp; //!<Variabile Kp
  float Ki; //!<Variabile Ki
  float Kd; //!<Variabile Kd
  float setPoint; //!<Variabile setpoint
  float Iterm; //!<Variabile di stato integrale
  float previousError; //!<Variabile dell'errore precedente
  float topLimit; //!<Limite superiore dell'output
  float bottomLimit; //!<Limite inferiore dell'output
  unsigned long lastTime; //!Variabile di tempo precedente
  bool setPointReached;

  //!Inizialiazza variabili
  /*!La funzione inizializza l'intera struttura del PID
    \param kp Valore Kp
    \param ki Valore Ki
    \param kd Valore Kd
    \param TopLimit Valore limite superiore di output
    \param BottomLimit Valore limite inferiore di output
  */
  void init(float kp, float ki, float kd, float TopLimit, float BottomLimit){
    Kp=kp;
    Ki=ki;
    Kd=kd;
    Iterm=0;
    previousError=0;
    topLimit = TopLimit;
    bottomLimit = BottomLimit;
  }

  float compute(float input, unsigned long time){
    float deltaTime=(time-lastTime)/1000;
    lastTime=time;

    float error=setPoint-input;
    Iterm += error * deltaTime;
    float Dterm = (error - previousError)/deltaTime;
    float output = Kp*error + Ki*Iterm + Kd*Dterm;
    previousError=error;

    if (output>topLimit)output=topLimit;
    if (output<bottomLimit)output=bottomLimit;

    if (error < MAX_ERROR && Iterm < MAX_ERROR && Dterm < MAX_ERROR)setPointReached=true;

    return output;
  }

  void setSetPoint(float sP){
    setPoint=sP;
    lastTime=0;
    Iterm =0;
    previousError=0;
    setPointReached=false;
  }
};
