bool machine_state = 0, prev_state = 0;
int height = 0, prev_height = 0;


//------------------------------------[Comm link Initialization + Functions]-------------------------------//

#include <SoftwareSerial.h>
SoftwareSerial mySerial(2, 3); // RX, TX

char incoming_comm(void) {
  //-----[Flush serial data and return valuable information]-----//
  while (mySerial.available() > 0) {
    char command = mySerial.read();
    if (command != 'S')
      return command;
  }

  return 0;
}

void process_comm(void) {
  char input = incoming_comm();

  if (input) {
    if (input == 'w' || input == 'D')
      machine_state = 0;
    else if (input == 'W')
      machine_state = 1;
    else if ((input == '0') || (input == '1') || (input == '2') || (input == '3') || (input == '4') || (input == '5') || (input == '6') || (input == '7') || (input == '8') || (input == '9'))
      height = input - '0' ;
    else if (input == 'q')
      height = 10;
  }
}

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX//


//------------------------------------------[PWM Driver Initialization]------------------------------------//

#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>


// left is side 0, right is side 1
// front is limb 0, middle is limb 1, back is limb 2

Adafruit_PWMServoDriver hemisphere[2] = {Adafruit_PWMServoDriver(0x40), Adafruit_PWMServoDriver(0x41)};

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX//


//------------------------------------------[JOINT CLASS DEFINITION]---------------------------------------//

#define steps 20
#define move_time 500 //milliseconds

class joints {

  private:
    int SERVOMIN, SERVOMAX;
    float theta_0, theta_i, theta_err, del_theta;
    float theta_inactive, theta_standby;
    int side, servoNum;
    int step_no = 0;
    float del_t;

  public:
    //__________________________________________constructor____________________________________________//
    joints(int side_no, int limb_no, int joint_no, float theta, int pulseMIN = 100, int pulseMAX = 460) {
      side = side_no;
      if (side == 0) {
        servoNum = (limb_no + 1) * 4 + (joint_no + 1) ;
        SERVOMIN = pulseMAX;
        SERVOMAX = pulseMIN;
      }
      else {
        servoNum = (4 - (limb_no + 1)) * 4 + (joint_no + 1) ;
        SERVOMIN = pulseMIN;
        SERVOMAX = pulseMAX;
      }

      theta_inactive = theta;
      theta_0 = theta;
      theta_i = theta;
      theta_err = 0;
    }

    void set_pos(float degree) {
      theta_i = degree;
      theta_err = theta_i - theta_0;
    }

    void update_angle(int active) {
      if (active) {
        if (theta_err) {
          step_no++;
          del_t = (float)step_no / (float)steps ;
          del_theta = theta_err * (3.0 * del_t * del_t - 2.0 * del_t * del_t * del_t);
          hemisphere[side].setPWM(servoNum, 0, map(theta_0 + del_theta, 0, 130, SERVOMIN, SERVOMAX));
        }
      }
      else
        hemisphere[side].setPWM(servoNum, 0, map(theta_inactive, 0, 130, SERVOMIN, SERVOMAX));
    }

    void end_motion(void) {
      step_no = 0;
      theta_err = 0;
      theta_0 = theta_i;
    }

};

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX//


//------------------------------------------[JOINT Objects]---------------------------------------//

joints robot_joint[2][3][3] = {
  { //____________________________LEFT___________________________//
    {joints(0, 0, 0, 45), joints(0, 0, 1, 10), joints(0, 0, 2, 15)},
    {joints(0, 1, 0, 30), joints(0, 1, 1, 10), joints(0, 1, 2, 20)},
    {joints(0, 2, 0, 25), joints(0, 2, 1, 10), joints(0, 2, 2, 20)}
  },
  { //____________________________RIGHT__________________________//
    {joints(1, 0, 0, 45), joints(1, 0, 1, 10), joints(1, 0, 2, 15)},
    {joints(1, 1, 0, 30), joints(1, 1, 1, 10), joints(1, 1, 2, 20)},
    {joints(1, 2, 0, 25), joints(1, 2, 1, 10), joints(1, 2, 2, 20)}
  }
};

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX//


//-------------------------------------------[Update Function]-------------------------------------//
void move_joints(int angles[][3][3])
{
  for (int side_no = 0; side_no < 2; side_no++)
    for (int limb_no = 0; limb_no < 3; limb_no++)
      for (int joint_no = 0; joint_no < 3; joint_no++)
        robot_joint[side_no][limb_no][joint_no].set_pos(angles[side_no][limb_no][joint_no]);
}

void update_all_joints(int active)
{
  unsigned long int t0;
 
  for (int count = 0; count < steps; count++) {
    t0 = millis();
    for (int side_no = 0; side_no < 2; side_no++)
      for (int limb_no = 0; limb_no < 3; limb_no++)
        for (int joint_no = 0; joint_no < 3; joint_no++)
          robot_joint[side_no][limb_no][joint_no].update_angle(active);
          
    while( (millis() - t0) <= ((float)move_time / (float)steps)) process_comm(); // rotation step delay 
  }

  for (int side_no = 0; side_no < 2; side_no++)
    for (int limb_no = 0; limb_no < 3; limb_no++)
      for (int joint_no = 0; joint_no < 3; joint_no++)
        robot_joint[side_no][limb_no][joint_no].end_motion();


}

//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX//


//-------------------------------------------[Movement Functions]-------------------------------------//

void deactivate(void) {
  int inactive_angles[2][3][3] = {
    { //____LEFT___//
      {45, 10, 15},
      {30, 10, 20},
      {25, 10, 20}
    },
    { //____RIGHT___//
      {45, 10, 15},
      {30, 10, 20},
      {25, 10, 20}
    }
  };

  move_joints(inactive_angles);
  update_all_joints(1);
}

void standby() {
  int factor1 = 10;
  int factor2 = 5;
  int standby_angles[2][3][3] = {
    { //____LEFT___//
      {90, 10 + height * factor1, 15 + height * factor2},
      {70, 10 + height * factor1, 20 + height * factor2},
      {40, 10 + height * factor1, 20 + height * factor2}
    },
    { //____RIGHT___//
      {90, 10 + height * factor1, 15 + height * factor2},
      {70, 10 + height * factor1, 20 + height * factor2},
      {40, 10 + height * factor1, 20 + height * factor2}
    }
  };

  move_joints(standby_angles);
  update_all_joints(1);
}

void machine() {
  if (machine_state != prev_state){
    if (machine_state)
      standby();
    else
      deactivate();
    prev_state = machine_state;
  }

  if (height!=prev_height){
    if (machine_state){
      standby();
      prev_height = height;
    }
  }
  
}


//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX//



//---------------------------------------------[MAIN CODE]--------------------------------------------//

void setup() {

  Serial.begin(9600);
  mySerial.begin(9600);

  hemisphere[0].begin();
  hemisphere[1].begin();
  hemisphere[0].setPWMFreq(50);  // Servos run at ~50 Hz
  hemisphere[1].setPWMFreq(50);

  update_all_joints(0);

  delay(1000);
  Serial.println("Bot activated");
}

void loop() {
  process_comm();
  machine();
}


//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX//




