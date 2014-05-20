
CircleWithAlphabet c1, c2, c3, c4; 
PFont baseFont;

void setup() {
  // size( int( displayWidth*0.6), int( displayHeight*0.6), P3D);
  size( 1280, 800, P3D);
  sphereDetail( 15);
  smooth();
  lights();

  baseFont = loadFont( "SansSerif-48.vlw");
  textFont( baseFont, 48);

  c1 = new CircleWithAlphabet( width / 1.5);
  c2 = new CircleWithAlphabet( width / 1.5 * 0.77);
  c3 = new CircleWithAlphabet( width / 1.5 * 0.77 * 0.77);
  c4 = new CircleWithAlphabet( width / 1.5 * 0.77 * 0.77 * 0.77);
}

void draw() {
  background( 0);
  translate( width/2 + 40.0, height * 7.0 / 18.0, 0.0);
  rotateX( QUARTER_PI * 1.25);
  rotateY( HALF_PI / 3.0);
  c1.draw();
  c2.draw();
  c3.draw();
  c4.draw();
}

