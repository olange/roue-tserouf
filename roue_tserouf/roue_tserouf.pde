
CircleWithAlphabet c1, c2; 
PFont baseFont;

void setup() {
  // size( int( displayWidth*0.6), int( displayHeight*0.6), P3D);
  size( 1280, 800, P3D);
  sphereDetail( 15);
  smooth();
  lights();

  baseFont = loadFont( "SansSerif-48.vlw");
  textFont( baseFont, 48);

  c1 = new CircleWithAlphabet( width / 1.7);
  c2 = new CircleWithAlphabet( width / 2.5);
}

void draw() {
  background( 0);
  translate( width/2, height/2, 0);
  rotateX( QUARTER_PI / 9 * millis() / 1000);
  rotateY( QUARTER_PI);
  c1.draw();
  c2.draw();
}

