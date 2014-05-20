
CircleWithAlphabet c1; 
PFont baseFont;

void setup() {
  size( int( displayWidth*0.6), int( displayHeight*0.6), P3D);
  sphereDetail( 15);
  smooth();
  lights();

  c1 = new CircleWithAlphabet();
  
  baseFont = loadFont( "SansSerif-48.vlw");
  textFont( baseFont, 48);
}

void draw() {
  background( 0);
  c1.draw();
}
