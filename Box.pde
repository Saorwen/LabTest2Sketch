class Box extends GameObject {
  
 float initialVelocity;
 float acceleration = 0.5;
  
 Box(float x, float y, float speed) {
   super(x, y, speed); // speed still not working
   
 }
  
 void update() {
   initialVelocity = random(1, 4);
   pos.y += initialVelocity;
   initialVelocity += acceleration;
 }
 void render() {
   pushMatrix();
   translate(pos.x, pos.y);
   fill(255, 0, 0);
   rect(pos.x, pos.y, 20, 20);
   popMatrix();
 }
  
}
