class Alphabet {
  
  String letterset;
  int length, current;

  /* Define the set of letters of the alphabet */
  Alphabet( String letterset) {
    this.letterset = letterset;
    this.length = letterset.length();
    rewind();
  }

  void rewind() {
    current = 0;
  }

  int length() {
    return length;
  }

  boolean hasNext() {
    return current < length;
  }

  char next() {
    return letterset.charAt( current++);
  }
}
