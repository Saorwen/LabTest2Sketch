boolean boxDropped = false;


void setup() {
  size(400, 400);
  gameObjects.add(new Plane(0, 20));
  gameObjects.add(new StickGuy(30, height/4));
  clouds = new ArrayList<Cloud>();
  for (int i = 0; i < 7; i++) {
    clouds.add(new Cloud());
  }
  
}

ArrayList<Cloud> clouds;
ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

void draw() {
  background(50, 190, 255);
  noStroke();
  
      for(Cloud c : clouds) {
    c.update();
    c.render();
  }
  
  fill(0, 255, 0);
  rectMode(CORNER);
  rect(-1, height/2, width, height/2);

  
  for (int i = 0; i < gameObjects.size(); i++) {
    GameObject g = gameObjects.get(i);
    g.render();
    g.update();
  }
}
