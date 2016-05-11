class Box extends GameObject {
  
 float initialVelocity;
 float acceleration = 0.5;
 float maxPoint = height/3;
  
 Box(float x, float y) {
   super(x, y);
   
 }
  
 void update() {
   initialVelocity = random(1, 4);
   if (pos.y <= maxPoint) { 
    pos.y += initialVelocity;
    initialVelocity += acceleration;
    pos.x += random(- 0.5, 0.5);
   }
 }
 void render() {
   pushMatrix();
   translate(pos.x, pos.y);
   fill(255, 0, 0);
   rect(pos.x, pos.y, 20, 20);
   popMatrix();
 }
  
}
