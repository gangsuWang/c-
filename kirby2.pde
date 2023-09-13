void kirby2(float x, float y, float d){
  fill(#e84051);
  arc(x-14*d,y+20*d,20*d,15*d,PI,2*PI); //왼쪽 다리
  arc(x+14*d,y+20*d,20*d,15*d,PI,2*PI); //오른쪽 다리
  
  fill(#f4c0d7);
  ellipse(x-20*d,y,23*d,12*d); //왼쪽 팔
  ellipse(x+15*d,y-10*d,12*d,23*d); //오른쪽 팔
  circle(x,y,38*d); //몸통
  
  fill(0);
  ellipse(x+5*d,y-5*d,5*d,10*d); //오른쪽 눈
  ellipse(x-5*d,y-5*d,5*d,10*d); //왼쪽 눈
  
  fill(250);
  ellipse(x+5*d,y-7*d,3*d,5*d); //오른쪽 눈
  ellipse(x-5*d,y-7*d,3*d,5*d); //왼쪽 눈
  
  fill(#e1698f);
  ellipse(x+10*d,y,5*d,3*d); //오른쪽 볼
  ellipse(x-10*d,y,5*d,3*d); //왼쪽 볼
  ellipse(x,y+5*d,3*d,5*d); //입
}
