int boxSize = 10;
int stepSize = 2;

int currentPosition;
ArrayList<Integer> pastPositions;

void setup(){
  size(800,800);
  pastPositions = new ArrayList();
  currentPosition = (int)random(0,80);
}

void draw(){
  background(0);
  moveTarget();
  drawHistory();
}

void moveTarget(){
  int offset = (int)random(-stepSize,stepSize);
  int nextPosition = currentPosition += offset;
  pastPositions.add(nextPosition);
}

void drawHistory(){

  for(int i = 0; i < pastPositions.size(); i++){
    int y = height - (boxSize * i);

    int x = pastPositions.get(i) * boxSize;
    fill(0,255,0);
    rect(x,y, boxSize, boxSize);
  }
}
