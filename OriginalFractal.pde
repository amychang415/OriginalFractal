public void setup(){
  size(1000,1000);
}
public void draw(){
   background(255);
  fill(255, 200, 200);
  noStroke();
  fractal(mouseX*2,mouseX*2,mouseX*10);
}

public void fractal(float x, float y, float z){
  if (z<5)
  {
  fill(color(y));
   ellipse(x,y,z,z);
  }
  else
  {
  fill(color(y));
  ellipse(x,y,z,z);
  fractal(x-z/3,y-z/3,z-10);
  fractal(x,y,z/10);
  }
}

