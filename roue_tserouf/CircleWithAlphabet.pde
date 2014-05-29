class CircleWithAlphabet {
  final float STROKE = 2.0;
  final color LUMIERE_FOSSILE = #FFDDCC; 
  final int   SOME_TRANSPARENCY = 192;

  float outer_radius, inner_radius, middle_radius, circle_width;  
  float half_outer_radius, half_inner_radius, half_middle_radius;
  float angle, half_angle;
  Alphabet alphabet;

  CircleWithAlphabet( float radius, Alphabet alphabet) {
    setOuterRadius( radius);
    setAlphabet( alphabet);
  }

  void setAlphabet( Alphabet alphabet_) {
    alphabet = alphabet_;
    angle = TWO_PI / alphabet.length();
    half_angle = angle / 2.0;    
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
    alphabet.rewind();
    while( alphabet.hasNext()) {
      rotateZ( half_angle * millis() / 2500);
      text( alphabet.next(), half_middle_radius, 0, 0);
      rotateZ( half_angle);
      line( half_inner_radius, 0, 0, half_outer_radius, 0, 0);
    } 
    popMatrix();
  }
}
