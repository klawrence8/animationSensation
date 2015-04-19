PImage map;
PImage disneyLogoNode, disneyStoryNode, disneyCharNode;
PImage dreamworksLogoNode, dreamworksStoryNode, dreamworksCharNode;
PImage pixarLogoNode, pixarStoryNode, pixarCharNode;
PImage fs;

PImage titleScreen;

color bg;
color c;
boolean thirties, forties, fifties, sixties, seventies, eighties, ninties, noughties, tens;

boolean title;

int[] sprockets;


ArrayList<dataNode> node2010s;
ArrayList<dataNode> node2000s;
ArrayList<dataNode> node1990s;
ArrayList<dataNode> node1980s;
ArrayList<dataNode> node1970s;
ArrayList<dataNode> node1960s;
ArrayList<dataNode> node1950s;
ArrayList<dataNode> node1940s;
ArrayList<dataNode> node1930s;

int mode;
//0 = disney
//1 = dreamworks
//2 = pixar

slider slide;



void setup() {
  size(1500, 700);
  //num = 0;
  background(255);
  fill(0);
  textFont(createFont("Georgia", 16));
  textAlign(CENTER, CENTER);
  title = true;
  titleScreen = loadImage("title.png");
  map = loadImage("map.jpg");
//  disneyLogoNode = loadImage("disney.ico");
//  disneyStoryNode = loadImage("disneyStory.png");
//  disneyCharNode = loadImage("disneyChar.png");
//  dreamworksLogoNode = loadImage("dw.JPG");
//  dreamworksStoryNode = loadImage("dreamworksStory.png");
//  dreamworksCharNode = loadImage("dreamworksChar.png");
//  pixarLogoNode = loadImage("pixar.png");
//  pixarStoryNode = loadImage("pixarStory.png");
//  pixarCharNode = loadImage("pixarChar.png");

//LOAD CHAR IMAGES OMG SO MUCH

  loadImages();
   
//create sprockets y pos
  sprockets = new int[30];
  for (int i = 0; i < 30; i++) {
    sprockets[i] = i*30;
  }
  
  bg = 255;
  c = color(0);
  
  slide = new slider(318, 318+50, 630, 630+30, 10, 50, 30);
 
}
/*
void keyPressed(){
  if(key=='-') {
    tens = !(tens);
  }
  if(key=='0') {
    noughties = !(noughties);
  }
  if(key=='9') {
    ninties = !(ninties);
  }
  if(key=='8') {
    eighties = !(eighties);
  }
  if(key=='7') {
    seventies = !(seventies);
  }
  if(key=='6') {
    sixties = !(sixties);
  }
  if(key=='5') {
    fifties = !(fifties);
  }
  if(key=='4') {
    forties = !(forties);
  }
  if(key=='3') {
    thirties = !(thirties);
  }
}*/

void keyPressed(){
  if(key==CODED){
    if(keyCode==RIGHT){
      title = false;
    }
  }
}

void mouseDragged(){
  //drag slider
  if(mouseX > slide.getLeft() && mouseX < slide.getRight() && mouseY > slide.getTop() && mouseY < slide.getBot()){
    
      float newLeft = slide.getLeft() + (mouseX-pmouseX);
      float newRight = slide.getRight() + (mouseX-pmouseX);
      if(newLeft>318 && newRight<920){
        slide.setLeft(newLeft);
        slide.setRight(newRight);
      }
    }
    //switch decades according to location of slider
    //okay these are definitely not exact but yknow what it works
    
    float left = slide.getLeft(); float right = slide.getRight();
    if(left >= 318 && right < 380){ 
      thirties = true;
      forties = false;
    }
    if(left >= 380 && right < 451){
      forties = true;
      thirties = false;
      fifties = false;
    }
    if(left >= 451 && right < 517.5){
      fifties = true;
      forties = false;
      sixties = false;
    }
    if(left >= 517.5 && right < 584){
      sixties = true;
      seventies = false;
      fifties = false;
    }
    if(left >=584 && right < 650.5){
      seventies = true;
      sixties = false;
      eighties = false;
    }
    if(left >=650.5 && right < 717){
      eighties = true;
      seventies = false;
      ninties = false;
    }
    if(left >=717 && right < 783.5){
      ninties =true;
      eighties = false;
      noughties = false;
    }
    if(left >= 783.5 && right < 850){
      noughties = true;
      ninties = false;
      tens = false;
    }
    if(left >=850 && right < 920) {
      tens = true;
      noughties = false;
    }
    
  
}

void draw() {
  if(title){
    image(titleScreen, 0, 0);
  }else{
  
  image(map, 0, 0);
  
  if (tens) {
    ArrayList<dataNode> node2010s = populate2010s();
    drawDecade(node2010s);
    drawLinks(node2010s);
  }
  if (noughties) {
    ArrayList<dataNode> node2000s = populate2000s();
    drawDecade(node2000s);
    drawLinks(node2000s);
  }//end of 2000 if
  if (ninties) {
    ArrayList<dataNode> node1990s = populate1990s();
    drawDecade(node1990s);
    drawLinks(node1990s);
  }
  if (eighties) {
    ArrayList<dataNode> node1980s = populate1980s();
    drawDecade(node1980s);
    drawLinks(node1980s);
  }
  if (seventies) {
    ArrayList<dataNode> node1970s = populate1970s();
    drawDecade(node1970s);
    drawLinks(node1970s);
  }
  if (sixties) {
    ArrayList<dataNode> node1960s = populate1960s();
    drawDecade(node1960s);
    drawLinks(node1960s);
  }
  if (fifties) {
    ArrayList<dataNode> node1950s = populate1950s();
    drawDecade(node1950s);
    drawLinks(node1950s);
  }
  if (forties) {
    ArrayList<dataNode> node1940s = populate1940s();
    drawDecade(node1940s);
    drawLinks(node1940s);
  }
  if (thirties) {
    ArrayList<dataNode> node1930s = populate1930s();
    drawDecade(node1930s);
    drawLinks(node1930s);
  }
  
  fill(0);
  noStroke();
  rect(1230, 0, 150, 700);
  fill(255);
  for (int i = 0; i < 30; i++) {
    rect(1233, sprockets[i], 15, 15, 5);
  }
  //draw text field at top
  fill(200, 200, 255, 150);
  noStroke();
  rect(0, 0, 1230, 50);
  //draw slider base bar near bottom
  fill(200, 200, 255, 230);
  rect(315, 640, 610, 10, 50);
  
  /* //draw actual slider
  fill(180, 180, 255);
  stroke(160, 160, 255);
  rect(318, 630, 50, 30, 10);
  */
  fill(180, 180, 255);
  stroke(160, 160, 255);
  rect(slide.getLeft(), slide.getTop(), slide.getWidth(), slide.getHeight());
  
  //date text
  textSize(18);
  fill(0);
  text("1930s", 350, 640);
  text("1940s", 416.25, 640);
  text("1950s", 482.5, 640);
  text("1960s", 548.75, 640);
  text("1970s", 615, 640);
  text("1980s", 681.25, 640);
  text("1990s", 747.5, 640);
  text("2000s", 813.75, 640);
  text("2010s", 880, 640);
  }
}

void drawDecade(ArrayList<dataNode> list) {
  for (int i = 0; i < list.size(); i++) {
    fill(0,0,list.get(i).getCompany() * 100);
    //char ethnicity node
    if (list.get(i).getType() == 0 && list.get(i).getOrigin()==null) {
      noStroke();
      ellipse(list.get(i).getLong(), list.get(i).getLat(), 5, 5);
      if(overArea(list.get(i).getLong(), list.get(i).getLat(), 5, 5)) {
        //stroke(253, 253, 0);
        ellipse(list.get(i).getLong(), list.get(i).getLat(), 15, 15);
        fill(50,55,50);
        textSize(25);
        text(list.get(i).name(), 615, 25);
      }
    } else if (list.get(i).getType()==1 || (list.get(i).getType()==0 && list.get(i).getOrigin()!=null)) {
      rect(list.get(i).getLong(), list.get(i).getLat(), 5, 5);
      if(overArea(list.get(i).getLong(), list.get(i).getLat(), 5, 5)) {
        rect(list.get(i).getLong(), list.get(i).getLat(), 15, 15);
        fill(50,50,50);
        textSize(25);
        text(list.get(i).name(), 615, 25);
      }
    }else{
      noStroke();
      triangle(list.get(i).getLong()-5, list.get(i).getLat()+5,
           list.get(i).getLong(), list.get(i).getLat()-5,
           list.get(i).getLong()+5, list.get(i).getLat()+5);
      if(overArea(list.get(i).getLong(), list.get(i).getLat(), 5, 5)) {
        //stroke(253, 253, 0);
        triangle(list.get(i).getLong()-10, list.get(i).getLat()+10,
           list.get(i).getLong(), list.get(i).getLat()-10,
           list.get(i).getLong()+10, list.get(i).getLat()+10);
        fill(50,50,50);
               textSize(25);
        text(list.get(i).name(), 615, 25);
    }
  }
}
}

void drawLinks(ArrayList<dataNode> list){
  for(int i=0; i< list.size(); i++){
    dataNode org = list.get(i).getOrigin();
    if(overArea(list.get(i).getLong(), list.get(i).getLat(), 5, 5) || 
      (org != null && overArea(org.getLong(), org.getLat(), 5, 5))
      || (list.get(i).getType()==2)) {
      stroke(100,100,255);
      strokeWeight(2.5);
    } else {
      stroke(100,100,100);
      strokeWeight(1);
    }
    if(org!=null && list.get(i).getType()!=2){
      //dataNode org = list[i].getOrigin();
      pushMatrix(); 
      //translate(getMid(list.get(i).getLong(), org.getLong()), getMid(list.get(i).getLat(), org.getLat()));
      translate(getMid(org.getLong(), list.get(i).getLong()), getMid(org.getLat(), list.get(i).getLat()));
      float a = atan2(list.get(i).getLong()-org.getLong(), org.getLat()-list.get(i).getLat());
      rotate(a+3.14159265);
      line(0, 0, -5, -5);
      line(0, 0, 5, -5);
      popMatrix();
      line(list.get(i).getLong(), list.get(i).getLat(), org.getLong(), org.getLat());
    }
  }
  noStroke();
}

float getMid(float x1, float x2){
  return((x1+x2)/2.0);
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
