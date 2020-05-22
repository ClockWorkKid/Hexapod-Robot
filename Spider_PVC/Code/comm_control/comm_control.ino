#include <SoftwareSerial.h>
#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>

SoftwareSerial mySerial(2, 3); // RX, TX

Adafruit_PWMServoDriver r_limbs = Adafruit_PWMServoDriver(0x41);
Adafruit_PWMServoDriver l_limbs = Adafruit_PWMServoDriver(0x40);

#define SERVOMIN  100 // 'minimum' pulse length count (of 4096)
#define SERVOMAX  600 // 'maximum' pulse length count (of 4096)

#define waist 1
#define knee 2
#define ankle 3

float angle = 50.0;
float angle1;
float angle2;
uint8_t servoNum = 0;
int servo_step = 10;


void setup() {
  Serial.begin(9600);
  mySerial.begin(9600);

  l_limbs.begin();
  r_limbs.begin();
  l_limbs.setPWMFreq(50);  // Servos run at ~60 Hz
  r_limbs.setPWMFreq(50);



  servo_write('r', 1, 1, 45);
  servo_write('r', 2, 1, 30);
  servo_write('r', 3, 1, 25);
  servo_write('r', 1, 2, 10);
  servo_write('r', 2, 2, 10);
  servo_write('r', 3, 2, 10);
  servo_write('r', 1, 3, 15);
  servo_write('r', 2, 3, 20);
  servo_write('r', 3, 3, 20);

  servo_write('l', 1, 1, 85);
  servo_write('l', 2, 1, 90);
  servo_write('l', 3, 1, 105);
  servo_write('l', 1, 2, 120);
  servo_write('l', 2, 2, 115);
  servo_write('l', 3, 2, 120);
  servo_write('l', 1, 3, 110);
  servo_write('l', 2, 3, 110);
  servo_write('l', 3, 3, 110);



  angle1 = angle;
  angle2 = angle;

  delay(1000);
}

void loop() {
/*  
  if (mySerial.available()) {
    char data_in = mySerial.read();

    if (data_in == 'F'){
      angle1-=0.5;
      angle2+=0.5;
    }
    else if (data_in == 'B'){
      angle1+=0.5;
      angle2-=0.5;
    }

    for (int limb = 1; limb <= 3; limb++) {
      for (int joint = 2; joint <= 3; joint++) {
        servo_write('l', limb, joint, angle1);
        servo_write('r', limb, joint, angle2);
      }
    }
  }
*/
}


void servo_write(char limb_side, uint8_t limb_no, uint8_t joint_no, float degree) {

  if (limb_side == 'r'){
    servoNum = (4-limb_no) * 4 + joint_no ;
    r_limbs.setPWM(servoNum, 0, map(degree, 0, 180, SERVOMIN, SERVOMAX));
  }
  else if (limb_side == 'l'){
    servoNum = limb_no * 4 + joint_no ;
    l_limbs.setPWM(servoNum, 0, map(degree, 0, 180, SERVOMIN, SERVOMAX));
  }

}

