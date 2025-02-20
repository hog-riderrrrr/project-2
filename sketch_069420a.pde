float car_x, dx;



void setup () {

  size (600, 600);
dx = 12;
  car_x = -600;
}



void draw () {

  background (190);


  fill(160);
  rect(0, 420, 600, 600);
  car(car_x, 0);

 car_x = car_x + dx;

  if (car_x > 250) {
   dx = -4;
  } 
  if (car_x < -600){
    dx = 12;
  }
}


void car (float x, float y) {
  pushMatrix();
  translate(x, y);
  circle(0,0,100);

  noStroke();

  //car
  fill(224, 224, 224);
  rect(150, 350, 350, 85);
  quad(200, 350, 400, 350, 360, 280, 250, 280);


  fill(224, 224, 224); //car trunk
  triangle(150, 350, 80, 435, 150, 435);
  triangle(150, 350, 80, 435, 110, 360);


  //fill(255, 253, 140, 180); //light
  //quad(520, 350, 520, 390, 600, 420, 600, 320);

  fill(5, 247, 255);
  rect(262, 290, 100, 50);

  fill(0);
  ellipse(150, 430, 80, 80);
  ellipse(450, 430, 80, 80);

  popMatrix();
}
