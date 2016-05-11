
void setup() {
  size(400, 400);
  gameObjects.add(new Plane(0, 20, 2));
  
}

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

void draw() {
  background(50, 190, 255);
  noStroke();
  fill(0, 255, 0);
  rect(-1, height/2, width, height/2);
  
  for (int i = 0; i < gameObjects.size(); i++) {
    GameObject g = gameObjects.get(i);
    g.render();
    g.update();
  }
}
