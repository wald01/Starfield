Particle[] bob = new Particle[600];
int result = 0;
int ranNum;
void setup() {
  size(500, 500);
  frameRate(30);
  for (int i = 0; i < bob.length; i++) {
    ranNum = (int)(Math.random()*51);
    if (ranNum == 0)
      bob[i] = new oddballParticle();
    else
      bob[i] = new Particle();
  }
}// end

void draw() {
  background(0);
  for (int i = 0; i < bob.length; i ++) {
    bob[i].show();
    bob[i].move();
  }
//  for (int i = 0; i < bob.length; i++) {
//    if (bob[i].getX() > 500 || bob[i].getX() < 0)
//      result++;
//    else if (bob[i].getY() > 500 || bob[i].getY() < 0)
//     result++;
//  }
}// end
void mousePressed() {
  ranNum = (int)(Math.random()*31);
  for (int i = 0; i < bob.length; i++) {
    bob[i].setX(250);
    bob[i].setY(250);
  }
}// end

class Particle {
  double myX, myY, myAngle, mySpeed;
  int myColor;

  Particle() {
    myX = myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    //myColor = color((int)(Math.random()*36)+220,(int)(Math.random()*10)+210,(int)(Math.random()*10));
    myColor = color(255, 255, 0);
  }//
  double getX() { //dataType function... can return something back(no void)
    return myX;
  }
  double getY() {
    return myY;
  }
  void show() {
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, 5, 5);
  }
  void move() {
    myX +=  Math.cos(myAngle)*mySpeed;
    myY +=  Math.sin(myAngle)*mySpeed;
  }
  void setX(double x) {
    myX = x;
  }
  void setY(double y) {
    myY = y;
  }
}// end of class
class oddballParticle extends Particle { //inhertance
  //already inherants double myX,myY...

  //Red sun
  oddballParticle() {
    mySpeed = Math.random()*1.5;
  }//
  void move() { //so the oddball moves differently
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
  }//
  void show() { //so the oddball shows differently
    fill(255, 128, 0);
    ellipse((float)myX, (float)myY, 40, 40);
  }//

}// end of class
