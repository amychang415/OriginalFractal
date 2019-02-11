
int time = 10;
public void setup(){
  size(1000,1000);
  
}
public void draw(){
   background(255);
  fill(255, 200, 200);
  noStroke();
  fractal(time*2,time*2,time*10);
  time = time+10;
}

public void fractal(float x, float y, float z){
  if (z<5)
  {
  fill(color(255,255,255,x*10));
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

