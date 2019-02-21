
//Rain  Sensor
int nRainIn = A1;
int nRainDigitalIn = 2;
int nRainVal;

//Flame Sensor 
int flame_sensor = 4;
int flame_detected;

void setup() {
  Serial.begin(9600);
  pinMode(2,INPUT);
  pinMode(flame_sensor, INPUT);
}

void loop() {

   flame_detected = digitalRead(flame_sensor); 
   nRainVal = analogRead(nRainIn);  
   int def = 2000; // Default Value for Serial Port 

   if(flame_detected == 0)
   {
    Serial.println(flame_detected + 60);
    delay(1000);
   }

   else if(nRainVal < 999)
   {
    Serial.println(nRainVal);
    delay(1000);
   }
   else 
   Serial.println(def);
   delay(1000);
}
