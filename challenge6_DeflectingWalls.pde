Ball b = new Ball(50,50,1,3,color(255,0,0));
Ball b2 = new Ball(250,350,1,5,color(0,255,0));
ArrayList<Ball> bouncingBalls = new ArrayList();
void setup(){
  size(800,800);
  bouncingBalls.add(b);
  bouncingBalls.add(b2);
}
void draw(){
  background(255);
  for (int i = 0;i<bouncingBalls.size(); i++){
    Ball curBall = bouncingBalls.get(i);
    curBall.move();
    curBall.display();
  }
  //b.move();
  //b.display();
  //b2.move();
  //b2.display();  
}
