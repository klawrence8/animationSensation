PImage map;
PImage disneyLogoNode, disneyStoryNode, disneyCharNode;
PImage dreamworksLogoNode, dreamworksStoryNode, dreamworksCharNode;
PImage pixarLogoNode, pixarStoryNode, pixarCharNode;
PImage fs;

color bg;
color c;
int num;

dataNode[] node2010s;
dataNode[] node2000s;
dataNode[] node1990s;
dataNode[] node1980s;
dataNode[] node1970s;
dataNode[] node1960s;
dataNode[] node1950s;
dataNode[] node1940s;
dataNode[] node1930s;

PImage[] logo;
Table table;

int mode;
//0 = disney
//1 = dreamworks
//2 = pixar
int decade;

void setup() {
  size(1500, 700);
  num = 0;
  background(255);
  fill(0);
  textFont(createFont("Georgia", 16));
  textAlign(CENTER, CENTER);
  decade = 2000;
 

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

void keyPressed(){
  if(key=='b'){ decade = 2010;}
  if(key=='a'){ decade = 2000;}
}

void draw() {
  
  image(map, 0, 0);
  if(decade == 2010){
  dataNode[] node2010s = populate2010s();
  for (int i = 0; i < node2010s.length; i++) {
    fill(0,0,node2010s[i].getCompany() * 100);
    //char ethnicity node
    if (node2010s[i].getType() == 0) {
      ellipse(node2010s[i].getLong(), node2010s[i].getLat(), 15, 15);
      if(overArea(node2010s[i].getLong(), node2010s[i].getLat(), 15, 15)) {
        fill(50,55,50);
        text(node2010s[i].name(), node2010s[i].getLong() - 5, node2010s[i].getLat() -5);
      }
    }
    //origin story node
    else if (node2010s[i].getType() == 1) {
      rect(node2010s[i].getLong(), node2010s[i].getLat(), 15, 15);
      if(overArea(node2010s[i].getLong(), node2010s[i].getLat(), 15, 15)) {
        fill(50,50,50);
        text(node2010s[i].name(), node2010s[i].getLong() - 5, node2010s[i].getLat() -5);
      }
    } 
    //office node
    else {
      image(logo[node2010s[i].getCompany()], node2010s[i].getLong(), node2010s[i].getLat());
      //ellipse(nodes[i].getLong(), nodes[i].getLat(), 15, 15);
    }
    //text(node2010s[i].name(), node2010s[i].getLong(), node2010s[i].getLat());
  
  }
  
  }
  if(decade == 2000){
    dataNode[] node2000s = populate2000s();
    for(int i =0; i<node2000s.length; i++){
      fill(0,0,node2000s[i].getCompany() * 100);
    if (node2000s[i].getType() == 0) {
      ellipse(node2000s[i].getLong(), node2000s[i].getLat(), 15, 15);
      if(overArea(node2000s[i].getLong(), node2000s[i].getLat(), 15, 15)) {
        fill(50,50,50);
        text(node2000s[i].name(), node2000s[i].getLong() - 5, node2000s[i].getLat() -5);
      }
    }
     else if (node2000s[i].getType() == 1) {
      rect(node2000s[i].getLong(), node2000s[i].getLat(), 15, 15);
      if(overArea(node2000s[i].getLong(), node2000s[i].getLat(), 15, 15)) {
        fill(50,50,50);
        text(node2000s[i].name(), node2000s[i].getLong() - 5, node2000s[i].getLat() -5);
      }
    } 
    else {
      image(logo[node2000s[i].getCompany()], node2000s[i].getLong(), node2000s[i].getLat());
    }
    //text(node2000s[i].name(), node2000s[i].getLong(), node2000s[i].getLat());
    }
  }//end of 2000 if
}

//void mousePressed() {
//  We'll need this later
//  if overArea(tlButtonX, tlButtonY, 15, 30) {
//    if (mouseRight) {
//      tlButtonX -= 100
//
//}

boolean overArea(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
