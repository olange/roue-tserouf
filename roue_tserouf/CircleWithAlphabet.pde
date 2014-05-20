class CircleWithAlphabet {
  final float OUTER_RADIUS = width / 1.7;
  final float INNER_RADIUS = OUTER_RADIUS * 0.7;
  final float HALF_OUTER_RADIUS = OUTER_RADIUS / 2.0;
  final float HALF_INNER_RADIUS = INNER_RADIUS / 2.0;
  final float STROKE = 3.0;
  final color COLOR_GOLD = #FFDDCC; 
  final int   OPACITY = 192;
  final int   ALPHABET_LEN = 22;
 
  PVector center;

  CircleWithAlphabet() {
    center = new PVector( width/2, height/2);
  }

  void draw() {
    pushMatrix();
    noFill();
    stroke( COLOR_GOLD, OPACITY);
    strokeWeight( STROKE);
    translate( center.x, center.y, 0);
    ellipse( 0, 0, OUTER_RADIUS, OUTER_RADIUS);
    ellipse( 0, 0, INNER_RADIUS, INNER_RADIUS);
    textAlign( LEFT, CENTER);
    for( int i = 0; i < ALPHABET_LEN; i++) {
      rotateZ( TWO_PI / ALPHABET_LEN * millis() / 1000 * i);
      line( HALF_INNER_RADIUS, 0, 0, HALF_OUTER_RADIUS, 0, 0);
      text( i, HALF_INNER_RADIUS + 10, 0, 0);
    } 
    popMatrix();
  }
}
