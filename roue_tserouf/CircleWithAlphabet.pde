class CircleWithAlphabet {
  final float STROKE = 2.0;
  final color LUMIERE_FOSSILE = #FFDDCC; 
  final int   SOME_TRANSPARENCY = 192;
  final int   ALPHABET_LEN = 22;
  final float ANGLE = TWO_PI / ALPHABET_LEN;
  final float HALF_ANGLE = ANGLE / 2.0;

  float outer_radius, inner_radius, middle_radius, circle_width;  
  float half_outer_radius, half_inner_radius, half_middle_radius;
  
  CircleWithAlphabet( float radius) {
    setOuterRadius( radius);
  }
  
  void setOuterRadius( float radius) {
    outer_radius = radius;
    inner_radius = outer_radius * 0.77;
    circle_width = outer_radius - inner_radius;
    middle_radius = inner_radius + circle_width / 2.0;  
    half_outer_radius = outer_radius / 2.0;
    half_inner_radius = inner_radius / 2.0;
    half_middle_radius = middle_radius / 2.0;
  }

  void draw() {
    pushMatrix();
    stroke( LUMIERE_FOSSILE, SOME_TRANSPARENCY);
    strokeWeight( STROKE);

    noFill();
    ellipse( 0, 0, outer_radius, outer_radius);
    ellipse( 0, 0, inner_radius, inner_radius);

    fill( LUMIERE_FOSSILE, SOME_TRANSPARENCY);
    textAlign( CENTER, CENTER);
    for( int i = 0; i < ALPHABET_LEN; i++) {
      rotateZ( HALF_ANGLE * millis() / 2500);
      text( char( i + 65), half_middle_radius, 0, 0);
      rotateZ( HALF_ANGLE);
      line( half_inner_radius, 0, 0, half_outer_radius, 0, 0);
    } 
    popMatrix();
  }
}
