//use Math.random to replace random element into oddball
//if math.random:
//  parts[dafeaf] = new OddballParticle... something like this

Particle[] bob = new Particle[500];
int result = 0;
void setup(){
size(500,500);
frameRate(144);
for(int i = 0; i < bob.length; i++){
  bob[i] = new Particle();
}

}

void draw(){
background(0);
for(int i = 0; i < bob.length; i ++){
bob[i].show();
bob[i].move();
}
for(int i = 0; i < bob.length; i++){
if(bob[i].getX() > 500 || bob[i].getX() < 0)
  result++;
else if(bob[i].getY() > 500 || bob[i].getY() < 0)
  result++;
}
//if (result > 475){ //does not work as intended
  //for(int i = 0; i < bob.length; i++){

  //}
}//
void mousePressed(){
  for(int i = 0; i < bob.length; i++){
      bob[i].setX(250);
      bob[i].setY(250);
  }
}

class Particle{
double myX, myY, myAngle, mySpeed;
int myColor;

  Particle(){
    myX = myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    //myColor = color((int)(Math.random()*36)+220,(int)(Math.random()*10)+210,(int)(Math.random()*10));
    myColor = color(255,255,0);
  }//
  double getX(){
    return myX;
  }
  double getY(){
    return myY;
  }
  void show(){
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, 5, 5);
  }
  void move(){
    myX +=Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
  }
  void setX(double x){
    myX = x;
  }
  void setY(double y){
    myY = y;
  }
  
}// end of class
class OddballParticle extends Particle{ //inhertance
//already inherants double myX,myY...

//Red sun
  OddballParticle(){
  
  }//
  void move(){ //so the oddball moves differently
    myX +=Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
  }//
  void show(){ //so the oddball shows differently
  fill(255, 128, 0);
  ellipse((float)myX, (float)myY, 40, 40);
  }//
  //int function... can return something back(no void)

}// end of class
