class Box extends GameObject {
  
 float initialVelocity;
 float acceleration = 0.5;
  
 Box(float x, float y) {
   super(x, y);
   
 }
  
 void update() {
   initialVelocity = random(1, 4);
   pos.y += initialVelocity;
   initialVelocity += acceleration;
 }
 void render() {
   pushMatrix();
   fill(255, 0, 0);
   rect(pos.x, pos.y, 20, 20);
   popMatrix();
 }
  
}
