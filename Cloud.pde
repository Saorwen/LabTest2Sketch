class Cloud {
  
  PVector cloudPos;
  float velocity;
  float cloudHeight;
  float cloudWidth;

 Cloud() {
  cloudPos = new PVector(random(width), random(0, height/4));
  velocity = random(0.1, 0.5);
  cloudHeight = random(35, 90);
  cloudWidth = random(15, 50);
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
  ellipse(cloudPos.x, cloudPos.y, cloudHeight, cloudWidth);
  popMatrix();
 }

 void repeat() {
  cloudPos.x = -10;
  cloudPos.y = random(0, height/4);
  velocity = random(0.1, 0.5);
  cloudHeight = random(35, 90);
  cloudWidth = random(15, 50);
 }
}
