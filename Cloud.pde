class Cloud {
  
  PVector cloudPos;
  float velocity;

 Cloud() {
  cloudPos = new PVector(-10, random(0, height/4));
  velocity = random(0.1, 1);
 }

 void update() {
  cloudPos.x += velocity;
  if (cloudPos.x >= width + 20) {
    repeat();
  }
 }

 void render() {
  pushMatrix();
  translate(cloudPos.x, cloudPos.y);
  fill(255);
  ellipse(cloudPos.x, cloudPos.y, 70, 35);
  popMatrix();
 }

 void repeat() {
  cloudPos.x = -10;
  cloudPos.y = random(0, height/4);
  velocity = random(0.1, 1);
 }
}
