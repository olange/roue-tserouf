
CircleWithAlphabet c1, c2, c3, c4;
Alphabet h1, h2;
PFont baseFont;

void setup() {
  size( int( displayWidth*0.6), int( displayHeight*0.6), P3D);
  // size( 1280, 800, P3D);
  // size( 1550, 1180, P3D); // Projecteur Panasonic Temple Allemand
  // size( displayWidth, displayHeight, P3D);
  frame.setTitle( "Roue Tserouf");
  sphereDetail( 15);
  smooth();
  lights();

  baseFont = loadFont( "SansSerif-48.vlw");
  textFont( baseFont, 48);

  h1 = new Alphabet( "אנגדהןזחטיכ");
  h2 = new Alphabet( "למנסעפצקרשת");
  c1 = new CircleWithAlphabet( width / 2.0, h1);
  c2 = new CircleWithAlphabet( width / 2.0 * 0.77, h2);
  c3 = new CircleWithAlphabet( width / 2.0 * 0.77 * 0.77, h1);
  c4 = new CircleWithAlphabet( width / 2.0 * 0.77 * 0.77 * 0.77, h2);
}

void draw() {
  background( #901D39);
  translate( width / 2.0 + 50.0, height * 5.0 / 14.0, 0.0);
  rotateX( QUARTER_PI * 1.25);
  rotateY( HALF_PI / 3.0);
  rotateZ( QUARTER_PI / 3.0 * millis() / 5000.0);
  c1.draw();
  c2.draw();
  c3.draw();
  c4.draw();
}
