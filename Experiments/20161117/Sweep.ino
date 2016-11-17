#include <Servo.h>

Servo myservo;
int pos = 0;
int sonarPin = 0;
int servoPin = 9;

int counter = 10;

void setup() {
  myservo.attach(servoPin);  // attaches the servo on pin 9 to the servo object
  Serial.begin(9600);
}

void loop() {  
  while (counter == 0) {} // this basically means it's done
  
  for (pos = 0; pos <= 170;pos ++) {    
    myservo.write(pos);
    delay(10);           
    printReading();
  }
  delay(1000);
  printPlaceHolder();
  for (pos = 170; pos >= 0; pos--) {
    myservo.write(pos);
    delay(10);
    printReading();
  }
  delay(1000);
  printPlaceHolder();

  counter--;
}

void printReading() {
  double cm = analogRead(sonarPin) / 2 * 2.54;
  Serial.print(millis());
  Serial.print(",");
  Serial.println(cm);
}

void printPlaceHolder() {
  Serial.println("-1,-1");
}

void serialEvent() {
  while (Serial.available()) {
    // get the new byte:
    char inChar = (char)Serial.read();
    // add it to the inputString:
    inputString += inChar;
    // if the incoming character is a newline, set a flag
    // so the main loop can do something about it:
    if (inChar == '\n') {
      stringComplete = true;
    }
  }
}