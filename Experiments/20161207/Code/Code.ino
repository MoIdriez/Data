#include <Servo.h>

// experiment information
int type = 2; // 0 = time bound, 1 = multiple per angle, 2 = continous
int counter = 12;
int timeDelay = 100;
int readingPerAngle = 10;

// servo information
Servo myservo;
int sonarpin = 0;
int servopin = 9;

void setup() {
  myservo.attach(9);
  Serial.begin(9600);
  myservo.write(0);
  delay(1000);
}

void loop() {
  while (counter == 0) {} // this basically means it's done
  
  if (type == 0) { // time bound
    timeBound();      
  } else if (type == 1) { // mutliple per angle
    multiplePerAngle();        
  } else { // continous
    continous();
  }
  counter--;
}

void timeBound() {
  for (int i = 0; i < 2; i++) {
    int startPos = i == 0 ? 0 : 90;
    int endPos = i == 0 ? 90 : 0;
    for (int pos = startPos; pos != endPos; pos = i == 0? pos + 1 : pos  - 1)
    {
      unsigned long startTime = millis();
      myservo.write(pos);
      while (millis() - startTime  < timeDelay) {
        printReading(pos);
      }
    }
    printPlaceHolder();
  }
}

void multiplePerAngle() {
  for (int i = 0; i < 2; i++) {
    int startPos = i == 0 ? 0 : 90;
    int endPos = i == 0 ? 90 : 0;
    for (int pos = startPos; pos != endPos; pos = i == 0? pos + 1 : pos  - 1)
    {
      myservo.write(pos);
      for (int x = 0; x < readingPerAngle; x++) {
        printReading(pos);
      }
    }
    printPlaceHolder();
  }
}

void continous() {
  for (int i = 0; i < 2; i++) {
    unsigned long startTime = millis();
    int nextPos = i == 0 ? 90 : 0;
    myservo.write(nextPos);
    while(millis() - startTime < 500) {
      printReading(nextPos);
    }                
    printPlaceHolder();
  }
  
}

void printReading(int angle) {
  double cm = analogRead(sonarpin) / 2 * 2.54;
  Serial.print(millis());
  Serial.print(",");
  Serial.print(counter);
  Serial.print(",");
  Serial.print(angle);
  Serial.print(",");
  Serial.println(cm);
}

void printPlaceHolder() {
  Serial.println("-1,-1");
}
