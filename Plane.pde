class Plane extends GameObject {
  
 Plane(float x, float y, float speed) { 
   super(x, y, speed);
 }
 
 void update() {
   pos.x += 2; // speed not working
   if (pos.x >= width) {
      pos.x = -10;
   }
  if (!boxDropped) { 
   if (keyPressed) {
     if (key == ' ') {
       Box b = new Box(pos.x, pos.y, speed);
       gameObjects.add(b);
       boxDropped = true;
     }
   }
  }
 }
 
 void render() {
   pushMatrix();
   fill(100);
   translate(pos.x, pos.y);
   rectMode(CENTER);
   rect(pos.x, pos.y, 80, 20);
   popMatrix();
 }
  
}
