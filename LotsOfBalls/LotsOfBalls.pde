

//declare arrays
float[] x = new float[2];
float[] y = new float[2];
float[] velX = new float[2];
float[] velY = new float[2];
float[] diam = new float[2];



void setup() {
  //set size of canvas
  size(800, 600);
  //declare a local variable called i
  int i = 0;

  //initialize variables
  x[0] = width/2;
  y[0] = height/2;
  diam[0] = 80;
  velX[0] = random(-5, 5);
  velY[0] = random(-5, 5);
  x[1] = width/2;
  y[1] = height/4;
  velX[1] = 10;
  velY[1] = 10;
  diam[1] = 80;
  //initialize variables
  while (i < 2) {
  x[i] = random(width);
  y[i] = random(height);
  diam[i] = random(5,100);
  velX[i] = random(-5,5);
  velY[i] = random(-5,5);
  //i increases by 1
  i ++ ;
}
}
void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[0], y[0], diam[0], diam[0]);

  //add velocity to position
  x[0] += velX[0];
  y[0] += velY[0];

  //bounce ball if it hits walls
  if (x[0] + diam[0]/2 >= width) {
    velX[0] = -abs(velX[0]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[0] - diam[0]/2 <= 0) {
    velX[0] = abs(velX[0]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[0] + diam[0]/2 >= height) {
    velY[0] = -abs(velY[0]);
  } else if (y[0] - diam[0]/2 <= 0) {
    velY[0] = abs(velY[0]);
  }
  //draw ball
  ellipse(x[1], y[1], diam[1], diam[1]);

  //add velocity to position
  x[1] += velX[1];
  y[1] += velY[1];

  //bounce ball if it hits walls
  if (x[1] + diam[1]/2 >= width) {
    velX[1] = -abs(velX[1]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[1] - diam[1]/2 <= 0) {
    velX[1] = abs(velX[1]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[1] + diam[1]/2 >= height) {
    velY[1] = -abs(velY[1]);
  } else if (y[1] - diam[1]/2 <= 0) {
    velY[1] = abs(velY[1]);
  }
}