public class Ball {
  private int speedX;
  private int speedY;
  private int diameter;
  private int dirX;
  private int dirY;
  private int posX;
  private int posY;
  color shapeColor;
  public Ball(int posX, int posY, int speedX, int speedY, color shapeColor){
    this.posX=posX;
    this.posY=posY;
    this.speedX=speedX;
    this.speedY=speedY;
    this.shapeColor=shapeColor;
    this.diameter=50;
    this.dirX=1;
    this.dirY=1;
  }
  void display() {
    fill (this.shapeColor);
    circle(this.posX,this.posY,this.diameter);
  }
  void move() {
  this.posX+=this.speedX;
  this.posY+=this.speedY;  
  //Make the border of the circle bounce off the walls
  if(this.posX+this.diameter/2==width){
    this.speedX=-1;
  }
  if(this.posX-this.diameter/2==0){
    this.speedX=1;
  } 
  if(this.posY-this.diameter/2==0){
    this.speedY=2;
  }
  if(this.posY+this.diameter/2==height){
    this.speedY=-2;
  }
}
}
