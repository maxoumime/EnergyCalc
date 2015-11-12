import processing.serial.*;

Serial port;
PrintWriter output;

int lf = 10;

void setup() {
  // Affiche la liste des ports
  //printArray(Serial.list());
  
  // Ouvre le port:
  port = new Serial(this, Serial.list()[1], 9600);
  port.clear();
  
  output = createWriter("valeurs.txt"); 

}

void draw() {
  
  while (port.available() > 0) {
    String valeurs = port.readStringUntil(lf);
    if (valeurs != null) {    
      output.print(valeurs);
    }
  }
}

void stop(){
  output.flush();
  output.close();
}