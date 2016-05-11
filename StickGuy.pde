class StickGuy extends GameObject {
  
  StickGuy(float x, float y) {
    super(x, y);
  }
  
  void update() {
    if (keyPressed) {
      if (key == 'w') {
        pos.y -= 1;
    }
    if (key == 'a') {
      pos.x -= 1;
    }
    if (key == 'd') {
      pos.x += 1;
    }
    if (key == 's') {
      pos.y += 1;
    }
   }
 }
  
  void render() {
    pushMatrix();
    translate(pos.x, pos.y);
    fill(255, 0, 100);
    rect(pos.x, pos.y, 15, 30);
    popMatrix();
  }
  
//  void collide() {
//    if (dist(pos.x, pos.y,)) {
//  }
  
}
