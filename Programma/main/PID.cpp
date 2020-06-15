#include <Arduino.h>

struct PID {
  float Kp;
  float Ki;
  float Kd;
  float setPoint;
  float Iterm;
  float previousError;

  void init(float kp, float ki, float kd){
    Kp=kp;
    Ki=ki;
    Kd=kd;
    Iterm=0;
    previousError=0;
  }

  float compute(float input, float dt){
    float error=setPoint-input;
    Iterm += error * dt;
    float Dterm = (error - previousError)/dt;
    float output = Kp*error + Ki*Iterm + Kd*Dterm;
    previousError=error;
    return output;
  }

  void setSetPoint(float sP){
    setPoint=sP;
  }
};
