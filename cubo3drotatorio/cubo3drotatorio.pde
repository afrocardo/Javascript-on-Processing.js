/**
*  Ricardo Meza Díaz
*/

//processing
//Variable
int r;
//lanza
void setup() { 

  size(500, 500, P3D); 
  
} 
//Dibuja
void draw() { 
  //Coordenasas del mouse eje X y eje Y
  float x = (mouseY/360.0)*-2*PI+PI; 
  float y = (mouseX/420.0)*2*PI-PI; 
  
  //Fondo de pantalla negro
  background(0); 
  //Colorea el cubo de gris.
  fill(255); 
  //Posiciona el cubo en el centro de la pantalla.
  translate(width/2, height/2, 0); 
  //Establece el grosor de los bordes del cubo.
  strokeWeight(1); 
  //Establece el color de los bordes del cubo.
  stroke(50); 
  //Cuando pulsamos el mouse,botón derecho o izquierdo.
if(mousePressed){	
  //Rota el cubo  entorno al eje X e Y.
  rotateX(x);  
  rotateY(y);  
    }
  //Cuando no pulsamos el mouse,rota automáticamente sobre el eje X,Y,Z 
  else{
      
    
    rotateX(radians(r));
   	rotateY(radians(r));
    rotateZ(radians(r));
    //Hace que el cubo se mueva.Es lo mismo que,r=r+1
    //La variable toma el valor que tenía mas 1 unidad.
    //Es el ángulo pero se puede decir que es la velocidad.
    r += 1;
	
	
  }
  //Color bordes
  strokeWeight(2); 
  //Color del cubo
  stroke(255); 
  //Color
  fill(100);
  //Caja de tamaño e pixeles,creo.
  box(140); 

}