void setup()
{
  background(#C7D2E8);
  size(800,800);
}
void draw()
{
  fill(#F2DCEE);
  ellipse(500,500,60,60);
  ellipse(400,300,200,180);
  ellipse(350,150,80,150);
  fill(#F2DCEE);
  ellipse(450,150,80,150);
  fill(#CAC6F2);
  ellipse(390,500,150,150);
  fill(255,255,255);
  ellipse(450,150,30,100);
  fill(#F2DCEE);
  ellipse(400,420,260,200);
  fill(#F2DCEE);
  ellipse(400,200,60,60);
  fill(255,255,255);
  ellipse(400,420,180,150);
  fill(0,0,0);
  ellipse(360,260,30,40);
  fill(0,0,0);
  ellipse(440,260,30,40);
  fill(255,255,255);
  ellipse(448,260,15,17);
  fill(255,255,255);
  ellipse(368,260,15,17);  
  fill(255,255,255);
  ellipse(350,150,30,100);
  fill(#3E8AC6);
  rect(354,278,10,40);
  fill(#3E8AC6);
  rect(435,278,10,40);
  stroke(#F2DCEE);
  rotate(PI/6);
  fill(#F2DCEE);
  ellipse(430,140,60,120);
  fill(255,255,255);
  ellipse(440,85,10,20);
  ellipse(430,85,10,20);
  ellipse(450,85,10,20);
}
import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int tears = 0;
int eyeColor = 0;
void setup(){
  background(#C7D2E8);
  size(800,800);
  arduino = new Arduino(this, Arduino.list()[0], 57600);
}
  void draw(){
  //body
  fill(#F2DCEE);
  ellipse(500,500,60,60);
  ellipse(400,300,200,180);
  ellipse(350,150,80,150);
  //body
  fill(#F2DCEE);
  ellipse(450,150,80,150);
  //ball
  fill(#CAC6F2);
  ellipse(390,500,150,150);
  //
  fill(255,255,255);
  ellipse(450,150,30,100);
  //
  fill(#F2DCEE);
  ellipse(400,420,260,200);
  //tail
  fill(#F2DCEE);
  ellipse(400,200,60,60);
  //
  fill(255,255,255);
  ellipse(400,420,180,150);
  //eyes
  fill(0,0,0);
  ellipse(360,260,30,40);
  fill(0,0,0);
  ellipse(440,260,30,40);
  //eyeballs
  fill(255,255,255);
  ellipse(448,260,15,17);
  fill(255,255,255);
  ellipse(368,260,15,17);  
  // belly
  fill(255,255,255);
  ellipse(350,150,30,100);
  //hand
  fill(#F2DCEE);
  rotate(PI/6);
  ellipse(430,140,60,120);
   // fingers
  fill(255,255,255);  
  ellipse(440,85,10,20);
  ellipse(430,85,10,20);
  ellipse(450,85,10,20);
  rotate(-PI/6);
  //tail
  fill(#F2DCEE);
  //tears
  tears = arduino.analogRead(1);
  if (tears <= 500){
  fill (#F2DCEE);
  }
  else{
    fill(#3E8AC6);
  }
  rect(354,278,10,40);
  rect(435,278,10,40);
  stroke(#F2DCEE);
  }
import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int tears = 0;
int eyeColor = 0;
void setup(){
  background(#C7D2E8);
  size(800,800);
  arduino = new Arduino(this, Arduino.list()[0], 57600);
}
  void draw(){
    background(192);
  //tail
  fill(#F2DCEE);
  ellipse(500,500,60,60);
  // top part of body (head)
  ellipse(400,300,200,180);
  //ears
  ellipse(350,150,80,150);
  //body
  fill(#F2DCEE);
  ellipse(450,150,80,150);
  //ball
  int y = arduino.analogRead(5);
  System.out.println(y);
  fill(#CAC6F2);
  ellipse(3*y,500,150,150);
  //white part of ear
  fill(255,255,255);
  ellipse(450,150,30,100);
  //bottom body
  fill(#F2DCEE);
  ellipse(400,420,260,200);
  //tail
  fill(#F2DCEE);
  ellipse(400,200,60,60);
  //belly
  fill(255,255,255);
  ellipse(400,420,180,150);
  //eyes
  fill(0,0,0);
  ellipse(360,260,30,40);
  fill(0,0,0);
  ellipse(440,260,30,40);
  //eyeballs
  if (y > 180){
  fill(255,255,255);
  ellipse(448,260,15,17);
  fill(255,255,255);
  ellipse(368,260,15,17);  
  }else{
  fill(255,255,255);
  ellipse(433,260,15,17);
  fill(255,255,255);
  ellipse(353,260,15,17);
  }
  // white part of ears
  fill(255,255,255);
  ellipse(350,150,30,100);
  //hand
  fill(#F2DCEE);
  rotate(PI/6);
  ellipse(430,140,60,120);
   // fingers
  fill(255,255,255);  
  ellipse(440,85,10,20);
  ellipse(430,85,10,20);
  ellipse(450,85,10,20);
  rotate(-PI/6);
  //tail
  fill(#F2DCEE);
  //tears
  tears = arduino.analogRead(5);
  if (tears <= 130){
  fill (#F2DCEE);
  }
  else{
    fill(#3E8AC6);
  }
  rect(354,278,10,40);
  rect(435,278,10,40);
  stroke(#F2DCEE);
  }
