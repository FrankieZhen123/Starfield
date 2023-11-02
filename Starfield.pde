Particle [] particles = new Particle[100];
OddballParticle [] oddBall = new OddballParticle[5];
void setup(){
  size(500,520);
  background(0);
  for(int i = 5; i < particles.length; i++){
    particles[i] = new Particle();
  }
  for(int i = 0; i < 5; i++){
   oddBall [i] = new OddballParticle(); 
  }
}
void draw(){
background(0);
  for(int i = 5; i < particles.length; i++){
    particles[i].move();
    particles[i].show();
  }
  for(int i = 0; i < 5; i++){
    oddBall[i].move();
    rotate((float)oddBall[i].angle);
    oddBall[i].show(); 
  }
}
class Particle{
  double x, y, speed, angle;
  color c;
  Particle(){
    c = color ((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    x = 250;
    y = 250;
    angle = (int)(Math.random()*1000*Math.PI);
    speed = (int)(Math.random()*5);
  }
  void move(){
    x += Math.cos(angle)*speed;
    y += Math.sin(angle)*speed;
  }
    void show(){
      fill(c);
      noStroke();
      ellipse((float)x,(float)y,15,15);
      noFill();
      fill(0);
      noStroke();
      ellipse(250,250,17,17);
  }
}
class OddballParticle extends Particle{
  OddballParticle(){
    speed = 5;
    angle = 7;
    x = 250;
    y = 250;
  }
  void move() {
    x += Math.cos(angle)*speed;
    y += Math.sin(angle)*speed;
  }
  void show(){
    fill(#00FFFF);
    ellipse((float)x-400, (float)y-900, 50, 50);
  }
}
