

PImage i;
PImage io;
PImage ior, iaf;
int y = 0;
int dy = 1;
float rx, ry;



void setup() {
  size(1400,800);
  ior = loadImage("imageA_O.png");
  iaf = loadImage("imageA_F.png");
  ior.resize(width/2, height);
  iaf.resize(width/2, height);
  io = createImage(width, height, RGB);
  pixelDensity(1);
}


void draw() {
  //fill(0);
  //rect(0,0,width/2,height/2);
  ry = random(0, 100);
  pushMatrix();
  translate(0, ry);
  image(iaf, 0, 0);
  popMatrix();
  image(ior, 0, 0);
  image(idk(), width/2, y);
  if (y == 0) {
    saveFrame("######.jpg");
  }
}

PImage idk() {
  io = get(0, y, width/2, dy);
  y+=dy;
  y = y%height;
  return io;
}
