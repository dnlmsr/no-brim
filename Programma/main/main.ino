#include "task.cpp"
#include "piston.cpp"
#include "CPUload.cpp"

//TODO define inputs

//!Lista dei task
enum taskIndex {
                TASK_INTEGRITY,
                TASK_PID,
                TASK_SFC,
                TASK_UI,
                TASK_SERIAL,
                TASK_MAX,
};

//!Lista dei pistoni
enum pistonIndex {
                  PIST_1M1,
                  PIST_2M1,
                  PIST_3M1,
                  PIST_3M2,
                  PIST_4M1,
                  PIST_MAX,
};


struct TaskStruct tasks[TASK_MAX];
struct measureTimingStruct measureTiming;
struct PistonStruct pistons[PIST_MAX];

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
  Serial.begin(38400);

  // TODO Inizializzazione I/O
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
int function_taskSFC () {}
int function_taskUI () {}
int function_taskSerial () {}
