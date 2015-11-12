int resistance = 100;

void setup() {
  Serial.begin(9600);
}

void loop() {

  int sensorValue = analogRead(A0);
  
  float voltage = sensorValue * (5.0 / 1023.0);
  
  float intensity = voltage / resistance;

  float power = resistance * intensity * intensity;
  
  Serial.print("Voltage (V): ");
  Serial.print(voltage);
  Serial.print(" | Intensity (mAmp): ");
  Serial.print(intensity*1000);
  Serial.print(" | Power (W): ");
  Serial.println(power);

}
