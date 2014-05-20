class CircleWithAlphabet {
  final float STROKE = 3.0;
  final color LUMIERE_FOSSILE = #FFDDCC; 
  final int   OPACITY = 128;
  final int   ALPHABET_LEN = 22;
  final float ANGLE = TWO_PI / ALPHABET_LEN;
  final float half_ANGLE = ANGLE / 2.0;

  float outer_radius, inner_radius, middle_radius, circle_width;  
  float half_outer_radius, half_inner_radius, half_middle_radius;
  
  CircleWithAlphabet( float radius) {
    setOuterRadius( radius);
  }
  
  void setOuterRadius( float radius) {
    outer_radius = radius;
    inner_radius = outer_radius * 0.7;
    circle_width = outer_radius - inner_radius;
    middle_radius = inner_radius + circle_width / 2.0;  
    half_outer_radius = outer_radius / 2.0;
    half_inner_radius = inner_radius / 2.0;
    half_middle_radius = middle_radius / 2.0;
  }

  void draw() {
    pushMatrix();
    noFill();
    stroke( LUMIERE_FOSSILE, OPACITY);
    strokeWeight( STROKE);
    // translate( center.x, center.y, 0);
    ellipse( 0, 0, outer_radius, outer_radius);
    ellipse( 0, 0, inner_radius, inner_radius);
    textAlign( CENTER, CENTER);
    for( int i = 0; i < 22; i++) {
      rotateZ( half_ANGLE * millis() / 2500);
      stroke( LUMIERE_FOSSILE, OPACITY);
      line( half_inner_radius, 0, 0, half_outer_radius, 0, 0);
      rotateZ( half_ANGLE);
      noStroke();
      fill( RAYONNEMENT_FOSSILE, OPACITY);
      text( char( i + 65), half_middle_radius, 0, 0);
    } 
    popMatrix();
  }
}
