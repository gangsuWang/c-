float [] x, y, d, vx, vy;
float [] dx, dy, dis;
void setup(){
  size(1200, 600);
  x = new float[15];
  y = new float[15];
  d = new float[15];
  vx = new float[15];
  vy = new float[15];
  dx = new float[15];
  dy = new float[15];
  dis = new float[15];
  for(int i = 0; i < 14; i++){
    x[i] = width;
    y[i] = random(height);
    d[i] = random(2, 7);
    vx[i] = random(2, 9);
    vy[i] = random(2, 9);
  }
}
int textOn = 0;
void draw(){
  background(0, 255, 255);
  for(int i=0; i<12; i++){
    x[i] += vx[i];
    y[i] += vy[i];
    Loopy(x[i], y[i], d[i]);
    if (x[i]>width || x[i] < 0) vx[i] = -vx[i];
    if (y[i]>height || y[i] < 0) vy[i] = -vy[i];
    x[14] = mouseX;
    y[14] = mouseY;
    kirby(x[14], y[14], 2);
    }
    
    x[13] += vx[13];
    y[13] += vy[13];
    if (x[13]>width || x[13] < 0) vx[13] = -vx[13];
    if (y[13]>height || y[13] < 0) vy[13] = -vy[13];
    kirby2(x[13], y[13], 2.3);
    
    for(int j=0; j<13; j++){
      dx[j] = x[14] - x[j];
      dy[j] = y[14] - y[j];
      dis[j] = sqrt(dx[j]*dx[j] + dy[j]*dy[j]);
      if(dis[j] < 25){
        textOn = 1;
      }
    }
  dx[13] = x[14] - x[13];
  dy[13] = y[14] - y[13];
  dis[13] = sqrt(dx[13]*dx[13] + dy[13]*dy[13]);
  if(dis[13] < 25){
    textOn = 2;
  }
  if(textOn == 1){
    textSize(200);
    fill(255, 0, 0);
    text("Boom!!!", 300, 300);
    noLoop();
  }
  if(textOn == 2){
    textSize(200);
    fill(255, 228, 0);
    text("Win!!!", 300, 300);
    noLoop();
  }
}
