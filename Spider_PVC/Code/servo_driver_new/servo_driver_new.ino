#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>
#include <Servo.h>

#define init_pos 90

const int r_waist[] = {0, 5, 1};
const int r_femur[] = {2, 3, 4};
const int r_tibia[] = {5, 6, 7};

const int l_waist[] = {8, 6, 9};
const int l_femur[] = {10, 11, 12};
const int l_tibia[] = {13, 14, 15};

Servo r, l;

int rotate;

//default address 0x40
Adafruit_PWMServoDriver pwm = Adafruit_PWMServoDriver();
Adafruit_PWMServoDriver pwm2 = Adafruit_PWMServoDriver(0x41);

//Adafruit_PWMServoDriver pwm = Adafruit_PWMServoDriver(&Wire, 0x40);


#define SERVOMIN  120 // (out of 4096)
#define SERVOMAX  550 // (out of 4096)

void initiate_position()
{
  for (int i = 0; i < 16; i++)
    pwm.setPWM(i, 0, map(init_pos, 0, 180, SERVOMIN, SERVOMAX));
  r.write(init_pos);
  l.write(init_pos);

  rotate = -20;
  for (int i = 0; i < 3; i++)
  {
    pwm.setPWM(r_tibia[i], 0, map(init_pos - rotate, 0, 180, SERVOMIN, SERVOMAX));
    pwm.setPWM(l_tibia[i], 0, map(init_pos + rotate, 0, 180, SERVOMIN, SERVOMAX));
  }

  rotate = 30;
  for (int i = 0; i < 3; i++)
  {
    pwm.setPWM(r_femur[i], 0, map(init_pos + rotate, 0, 180, SERVOMIN, SERVOMAX));
    pwm.setPWM(l_femur[i], 0, map(init_pos - rotate, 0, 180, SERVOMIN, SERVOMAX));
  }
}


void setup() {
  Serial.begin(9600);

  pwm.begin();
  pwm.setPWMFreq(60);

  r.attach(5);
  l.attach(6);

  delay(10);

  initiate_position();

  delay(2000);
}




void loop() {

    rotate = 30;
    //pwm.setPWM(r_tibia[0], 0, map(init_pos - rotate, 0, 180, SERVOMIN, SERVOMAX));
    



}


void shakeIt()
{
    for (rotate = 10; rotate > -10; rotate--)
  {
    pwm.setPWM(r_waist[0], 0, map(init_pos + rotate, 0, 180, SERVOMIN, SERVOMAX));
    pwm.setPWM(r_waist[2], 0, map(init_pos + rotate, 0, 180, SERVOMIN, SERVOMAX));
    r.write(init_pos + rotate);
    pwm.setPWM(l_waist[0], 0, map(init_pos + rotate, 0, 180, SERVOMIN, SERVOMAX));
    pwm.setPWM(l_waist[2], 0, map(init_pos + rotate, 0, 180, SERVOMIN, SERVOMAX));
    l.write(init_pos + rotate);
    delay(10);
  }

  delay(1000);

  for (rotate = -10; rotate < 10; rotate++)
  {
    pwm.setPWM(r_waist[0], 0, map(init_pos + rotate, 0, 180, SERVOMIN, SERVOMAX));
    pwm.setPWM(r_waist[2], 0, map(init_pos + rotate, 0, 180, SERVOMIN, SERVOMAX));
    r.write(init_pos + rotate);
    pwm.setPWM(l_waist[0], 0, map(init_pos + rotate, 0, 180, SERVOMIN, SERVOMAX));
    pwm.setPWM(l_waist[2], 0, map(init_pos + rotate, 0, 180, SERVOMIN, SERVOMAX));
    l.write(init_pos + rotate);
    delay(10);
  }
  delay(1000);
}


void humping()
{
    for (rotate = 10; rotate > -10; rotate--)
  {
    pwm.setPWM(r_waist[0], 0, map(init_pos + rotate, 0, 180, SERVOMIN, SERVOMAX));
    pwm.setPWM(r_waist[2], 0, map(init_pos + rotate, 0, 180, SERVOMIN, SERVOMAX));
    r.write(init_pos + rotate);
    pwm.setPWM(l_waist[0], 0, map(init_pos - rotate, 0, 180, SERVOMIN, SERVOMAX));
    pwm.setPWM(l_waist[2], 0, map(init_pos - rotate, 0, 180, SERVOMIN, SERVOMAX));
    l.write(init_pos - rotate);
    delay(10);
  }

  delay(1000);

  for (rotate = -10; rotate < 10; rotate++)
  {
    pwm.setPWM(r_waist[0], 0, map(init_pos + rotate, 0, 180, SERVOMIN, SERVOMAX));
    pwm.setPWM(r_waist[2], 0, map(init_pos + rotate, 0, 180, SERVOMIN, SERVOMAX));
    r.write(init_pos + rotate);
    pwm.setPWM(l_waist[0], 0, map(init_pos - rotate, 0, 180, SERVOMIN, SERVOMAX));
    pwm.setPWM(l_waist[2], 0, map(init_pos - rotate, 0, 180, SERVOMIN, SERVOMAX));
    l.write(init_pos - rotate);
    delay(10);
  }
  delay(1000);
}

