class Plane extends GameObject {
  
 Plane(float x, float y) { 
   super(x, y);
 }
 
 void update() {
   pos.x += 1.5; 
   if (pos.x >= width) {
      pos.x = -10;
   }
  if (!boxDropped) { 
   if (keyPressed) {
     if (key == ' ') {
       Box b = new Box(pos.x, pos.y);
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
