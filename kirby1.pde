void kirby(float x, float y, float d){
 fill(255, 0, 102); //왼발
 arc(x-5*d, y+10*d, 10*d, 15*d, 0, PI );
 
 fill(255, 204, 255); //얼굴
 stroke(255, 204, 255);
 circle(x, y, 28*d);
 arc(x+10*d, y-2*d, 28*d, 10*d, 0, PI/2);
 arc(x+10*d, y-2*d, 28*d, 10*d, 3* PI/2, 2*PI);
 ellipse(x-10*d, y-10*d, 10*d, 19*d);
 fill(255, 0, 102); //오른발
 stroke(0);
 ellipse(x+8*d, y+10*d, 10*d, 15*d);
 
 fill(0); //눈
 ellipse(x-5*d, y-5*d, 4*d, 7*d-2);
 ellipse(x+5*d, y-5*d, 4*d, 7*d-2);
 fill(255);
 stroke(0);
 ellipse(x-5*d, y-7*d, 2*d, 3*d+4);
 ellipse(x+5*d, y-7*d, 2*d, 3*d+4);
 
 fill(255, 0, 51); //입
 stroke(0);
 arc(x, y, 8*d, 10*d, 0, PI );
 
 fill(255, 51, 102); //볼
 ellipse(x-10*d, y, 4*d, 2*d);
 ellipse(x+10*d, y, 4*d, 2*d);
}
