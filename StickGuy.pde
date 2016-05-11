class StickGuy {
  
  PVector PlayerPos;
  
  StickGuy(float x, float y) {
    PlayerPos = new PVector(x, y);
  }
  
  void update() {
    if (keyPressed) {
     if (PlayerPos.y >= 95) { 
      if (key == 'w') {
        PlayerPos.y -= 1;
      }
    }
    if (key == 'a') {
      PlayerPos.x -= 1;
    }
    if (key == 'd') {
      PlayerPos.x += 1;
    }
    if (key == 's') {
      PlayerPos.y += 1;
    }
   }
   
   println(PlayerPos.y);
 }
  
  void render() {
    pushMatrix();
    translate(PlayerPos.x, PlayerPos.y);
    fill(255, 0, 100);
    rect(PlayerPos.x, PlayerPos.y, 15, 30);
    popMatrix();
  }

  
}
