#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>

Adafruit_PWMServoDriver l_limbs = Adafruit_PWMServoDriver(0x41);
Adafruit_PWMServoDriver r_limbs = Adafruit_PWMServoDriver(0x40);

#define SERVOMIN  150 // 'minimum' pulse length count (of 4096)
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
  l_limbs.begin();
  r_limbs.begin();
  l_limbs.setPWMFreq(50);  // Servos run at ~60 Hz
  r_limbs.setPWMFreq(50);

  for (int limb = 1; limb <= 3; limb++){
    for (int joint = 1; joint <= 3; joint++){
      servo_write('l', limb, joint, angle);
      servo_write('r', limb, joint, angle);
    }
  }

  Serial.begin(9600);
  delay(1000);
  angle1 = angle;
  angle2 = angle;
}


void loop() {
  for (int i = 0; i < 50; i++) {
    angle1+=0.5;
    angle2-=0.5;
    for (int limb = 1; limb <= 3; limb++) {
      for (int joint = 2; joint <= 3; joint++) {
        servo_write('l', limb, joint, angle1);
        servo_write('r', limb, joint, angle2);
      }
    }
    delay(servo_step);
  }
  delay(500);
  
  for (int i = 0; i < 50; i++) {
    angle1-=0.5;
    angle2+=0.5;
    for (int limb = 1; limb <= 3; limb++) {
      for (int joint = 2; joint <= 3; joint++) {
        servo_write('l', limb, joint, angle1);
        servo_write('r', limb, joint, angle2);
      }
    }
    delay(servo_step);
  }
  delay(500);
}


void servo_write(char limb_side, uint8_t limb_no, uint8_t joint_no, float degree) {

  servoNum = limb_no * 4 + joint_no ;
  if (limb_side == 'l')
    l_limbs.setPWM(servoNum, 0, map(degree, 0, 180, SERVOMIN, SERVOMAX));
  else if (limb_side == 'r')
    r_limbs.setPWM(servoNum, 0, map(degree, 0, 180, SERVOMIN, SERVOMAX));

}
