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
Table table;

class dataNode {
  int longitude, lattitude;
  int company;
  int type;
  String name;
  int year;
  
  dataNode(int lon, int lat, int c, int t, String n, int y) {
    longitude = lon;
    lattitude = lat;
    company = c;
    type = t;
    name = n;
    year = y;
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
  
  String name() {
    return name;
  }
  
  int getYear() {
    return year;
  }
}

void setup() {
  size(1500, 700);
  num = 0;
  background(255);
  fill(0);
  textFont(createFont("Georgia", 16));
  textAlign(CENTER, CENTER);
 
//  table = loadTable("data.csv", "header");
  nodes = new dataNode[39];
//  for (TableRow row : table.rows()) {
//    nodes[num] =  new dataNode(row.getInt("longitude"), row.getInt("lattitude"), row.getInt("company"), row.getInt("type"), row.getString("name"), row.getInt("year"));
//    num++;
//  }

// COMPANY
// 0 = disney
// 1 = dreamworks
// 2 = pixar

// TYPE
// 0 = character ethnicity
// 1 = story origin
// 2 = office

//~350 is the equator
  nodes[0] = new dataNode(275,300,0,0, "Big Hero 6", 2014);
  nodes[1] = new dataNode(1100,300,0,1, "Big Hero 6", 2014);
  nodes[2] = new dataNode(650, 200, 0, 0, "Frozen", 2013);
  nodes[3] = new dataNode(660, 210, 0, 1, "Frozen", 2013);
  nodes[4] = new dataNode(295, 275, 0, 0, "Wreck-It Ralph", 2012);
  nodes[5] = new dataNode(285, 285, 0, 1, "Wreck-It Ralph", 2012);
  nodes[6] = new dataNode(600, 200, 0, 0, "Tangled", 2010);
  nodes[7] = new dataNode(610, 210, 0, 1, "Tangled", 2010);
  nodes[8] = new dataNode(420, 250, 1, 0, "How to Train Your Dragon", 2010);
  nodes[9] = new dataNode(425, 235, 1, 1, "How to Train Your Dragon", 2010);
  nodes[10] = new dataNode(535, 35, 1, 0, "Shrek Forever After", 2010);
  nodes[11] = new dataNode(550, 45, 1, 1, "Shrek Forever After", 2010);
  nodes[12] = new dataNode(300, 100, 1, 0, "Megamind", 2010);
  nodes[13] = new dataNode(310, 120, 1, 1, "Megamind", 2010);
  nodes[14] = new dataNode(1000, 300, 1, 0, "Kung Fu Panda", 2011);
  nodes[15] = new dataNode(1015, 315, 1, 1, "Kung Fu Panda", 2011);
  nodes[16] = new dataNode(620, 230, 1, 0, "Puss in Boots", 2011);
  nodes[17] = new dataNode(625, 235, 1, 1, "Puss in Boots", 2011);
  nodes[18] = new dataNode(400, 100, 1, 0, "Madagascar 3", 2012);
  nodes[19] = new dataNode(414, 114, 1, 1, "Madagascar 3", 2012);
  nodes[20] = new dataNode(500, 499, 1, 0, "Rise of the Guardians", 2012);
  nodes[21] = new dataNode(514, 515, 1, 1, "Rise of the Guardians", 2012);
  nodes[22] = new dataNode(500, 500, 1, 0, "The Croods", 2013);
  nodes[23] = new dataNode(514, 515, 1, 1, "The Croods", 2013);
  nodes[24] = new dataNode(300, 300, 1, 0, "Turbo", 2013);
  nodes[24] = new dataNode(314, 314, 1, 1, "Turbo", 2013);
  nodes[25] = new dataNode(250, 250, 1, 0, "Mr. Peabody and Sherman", 2014);
  nodes[26] = new dataNode(255, 255, 1, 1, "Mr. Peabody and Sherman", 2014);
  nodes[27] = new dataNode(655, 145, 1, 0, "How to Train Your Dragon 2", 2015);
  nodes[28] = new dataNode(650, 140, 1, 1, "How to Train Your Dragon 2", 2015);
  nodes[29] = new dataNode(550, 300, 1, 0, "Penguins of Madagascar", 2015);
  nodes[29] = new dataNode(365, 515, 1, 1, "Penguins of Madagascar", 2015);
  nodes[30] = new dataNode(275, 275, 1, 0, "Home", 2015);
  nodes[31] = new dataNode(260, 260, 1, 1, "Home", 2015);
  nodes[32] = new dataNode(200, 200, 2, 0, "Toy Story 3", 2010);
  nodes[32] = new dataNode(200, 200, 2, 1, "Toy Story 3", 2010);
  nodes[33] = new dataNode(350, 250, 2, 0, "Cars 2", 2011);
  nodes[34] = new dataNode(355, 255, 2, 1, "Cars 2", 2011);
  nodes[35] = new dataNode(500, 30, 2, 0, "Brave", 2012);
  nodes[36] = new dataNode(515, 45, 2, 1, "Brave", 2012);
  nodes[37] = new dataNode(400, 400, 2, 0, "Monster's University", 2013);
  nodes[38] = new dataNode(410, 419, 2, 1, "Monster's University", 2013);
  
  
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
    fill(0,0,nodes[i].getCompany() * 100);
    //char ethnicity node
    if (nodes[i].getType() == 0) {
      ellipse(nodes[i].getLong(), nodes[i].getLat(), 15, 15);
    }
    //origin story node
    else if (nodes[i].getType() == 1) {
      rect(nodes[i].getLong(), nodes[i].getLat(), 15, 15);
    } 
    //office node
    else {
      image(logo[nodes[i].getCompany()], nodes[i].getLong(), nodes[i].getLat());
      //ellipse(nodes[i].getLong(), nodes[i].getLat(), 15, 15);
    }
    text(nodes[i].name(), nodes[i].getLong(), nodes[i].getLat());
  }
}

//void mousePressed() {
//  We'll need this later
//}

boolean overArea(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
