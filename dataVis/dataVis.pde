PImage map;
PImage disneyLogoNode, disneyStoryNode, disneyCharNode;
PImage dreamworksLogoNode, dreamworksStoryNode, dreamworksCharNode;
PImage pixarLogoNode, pixarStoryNode, pixarCharNode;
PImage fs;

color bg;
color c;
int num;

dataNode[] nodes;
PImage[] logo;

class dataNode {
  int longitude, lattitude;
  int company;
  int type;
  
  dataNode(int x, int y, int c, int t) {
    longitude = x;
    lattitude = y;
    company = c;
    type = t;
  }
  
  int getLong() {
    return longitude;
  }
  
  int getLat() {
    return lattitude;
  }
  
  int getCompany() {
    return company;
  }
  
  int getType() {
    return type;
  }
}

void setup() {
  size(1500, 700);
  num = 0;
  background(255);
  textFont(createFont("Georgia", 16));
  textAlign(CENTER, CENTER);
 
  nodes = new dataNode[5];
  nodes[0] = new dataNode(40,400, 0,0);
  nodes[1] = new dataNode(20, 200, 0, 0);
  nodes[2] = new dataNode(30, 300, 0, 0);
  nodes[3] = new dataNode(10, 100, 0, 0);
  nodes[4] = new dataNode(15, 250, 1, 1);
  //nodes[5] = new dataNode(100, 25, 1, 1);
  
  map = loadImage("map.jpg");
  disneyLogoNode = loadImage("disney.ico");
//  disneyStoryNode = loadImage("disneyStory.png");
//  disneyCharNode = loadImage("disneyChar.png");
  dreamworksLogoNode = loadImage("dw.JPG");
//  dreamworksStoryNode = loadImage("dreamworksStory.png");
//  dreamworksCharNode = loadImage("dreamworksChar.png");
  pixarLogoNode = loadImage("pixar.png");
//  pixarStoryNode = loadImage("pixarStory.png");
//  pixarCharNode = loadImage("pixarChar.png");
  logo = new PImage[3];
  logo[0] = disneyLogoNode;
  logo[1] = dreamworksLogoNode;
  logo[2] = pixarLogoNode; 
  bg = 255;
  c = color(0);
}

void draw() {
  
  image(map, 0, 0);
  for (int i = 0; i < nodes.length; i++) {
    if (nodes[i].getType() == 0) {
      ellipse(nodes[i].getLong(), nodes[i].getLat(), 15, 15);
    } else if (nodes[i].getType() == 1) {
      rect(nodes[i].getLong(), nodes[i].getLat(), 15, 15);
    } else {
      image(logo[nodes[i].getCompany()], nodes[i].getLong(), nodes[i].getLat());
      //ellipse(nodes[i].getLong(), nodes[i].getLat(), 15, 15);
    }
  }
}

//void mousePressed() {
//  //need later
//}

boolean overArea(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
