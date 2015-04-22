PImage map;
PImage disneyLogoNode, disneyStoryNode, disneyCharNode;
PImage dreamworksLogoNode, dreamworksStoryNode, dreamworksCharNode;
PImage pixarLogoNode, pixarStoryNode, pixarCharNode;
PImage fs30, fs40, fs50, fs60, fs70, fs80, fs90, fs00, fs10;

PImage titleScreen;
PImage aboutScreen;
PImage aboutIcon;
PImage titleIcon;

color bg;
color c;
color magenta2, magenta, lime2, lime, gold;
boolean thirties, forties, fifties, sixties, seventies, eighties, ninties, noughties, tens;
boolean thirties2, forties2, fifties2, sixties2, seventies2, eighties2, ninties2, noughties2, tens2;

boolean title, about;

int linkColAdjust, originalColAdjust, samePlaceColAdjust;
int[] sprockets;
int yPos;

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

slider slide; //periwinkle
slider slide2; // blue



void setup() {
  size(1500, 700);
  //num = 0;
  background(255);
  fill(0);
  textFont(createFont("Georgia", 16));
  textAlign(CENTER, CENTER);
  title = true;
  titleScreen = loadImage("title.png");
  aboutScreen = loadImage("about.png");
  aboutIcon = loadImage("aboutIcon.png");
  titleIcon = loadImage("titleIcon.png");
  map = loadImage("map.jpg");
 
  
//LOAD CHAR -- has been moved :D

  loadImages();
   
//create sprockets y pos
  sprockets = new int[240];
  for (int i = 0; i < 240; i++) {
    sprockets[i] = i*25;
  }
  
  yPos = 0;
  bg = 255;
  c = color(0);
  magenta2 = color(168, 53, 120);
  magenta = color(85, 0, 50);
  lime2 = color(103, 152, 0);
  lime = color(14, 81, 0);
  gold = color(162, 120, 0);
  slide = new slider(330, 330+50, 630, 630+30, 10, 50, 30);
 
  
  linkColAdjust = 255;
  originalColAdjust = 80;
  samePlaceColAdjust = 170;
  
 
}



void moveSlider(slider s){

  float newLeft = s.getLeft() + (mouseX-pmouseX);
      float newRight = s.getRight() + (mouseX-pmouseX);
      if(newLeft>=330 && newRight<930){
        s.setLeft(newLeft);
        s.setRight(newRight);
      }
  
}

void mouseDragged(){
  //drag slider
  if(mouseX > slide.getLeft() && mouseX < slide.getRight() && mouseY > slide.getTop() && mouseY < slide.getBot()){
    if(mousePressed){
      moveSlider(slide);
    }
  }
    //switch decades according to location of slider
    //okay these are definitely not exact but yknow what it works
    
    float left = slide.getLeft(); float right = slide.getRight();
    float mid = getMid(left, right);
    if(mid >= 335 && mid < 405){ 
      thirties = true;
    }else{ thirties = false;}
    if(mid >= 405 && mid < 473){
      forties = true;
    }else{ forties = false;}
    if(mid >= 473 && mid < 538){
      fifties = true;
    }else{ fifties = false;}
    if(mid >= 538 && mid < 603){
      sixties = true;
    }else{ sixties = false;}
    if(mid >=603 && mid < 668){
      seventies = true;
    }else{ seventies = false;}
    if(mid >=668 && mid < 733){
      eighties = true;
    }else{ eighties = false;}
    if(mid >=733 && mid < 798){
      ninties =true;
    }else{ ninties = false;}
    if(mid >= 798 && mid < 863){
      noughties = true;
    }else{ noughties = false;}
    if(mid >=863 && mid <= 930) {
      tens = true;
    } else{ tens = false;}
       
  
}//end of if mouse dragged

void mouseClicked(){
  if(title){
    if(overArea(1009, 500, 319, 55)){
      title = false;
      about = true;
    }
    if(overArea(1009, 588, 319, 55)){
      title = false;
      about = false;
    }
  }//end of if title mode
  else if(about){
    if(overArea(1009, 500, 319, 55)){
      title = true;
      about = false;
    }
    if(overArea(1009, 588, 319, 55)){
      title = false;
      about = false;
    }
  }//end of if about mode
  else{
    if(overArea(50, 455, 215, 40)){
      about = true;
      title = false;
    }
    if(overArea(50, 410, 200, 58)){
      title = true;
      about = false;
    }
  }//end of else main mode
}//end of mouseClicked()

void draw() {
  if(title){
    image(titleScreen, 0, 0);
    if(overArea(1009, 500, 319, 55)){
      fill(200, 200, 255, 150);
      noStroke();
      rect(1009, 500, 319, 55);
    }
    if(overArea(1009, 588, 319, 55)){
      fill(200, 200, 255, 150);
      noStroke();
      rect(1009, 588, 319, 55);
    }    
  }else if(about){
    image(aboutScreen, 0, 0);
    if(overArea(1009, 500, 319, 55)){
      fill(200, 200, 255, 150);
      noStroke();
      rect(1009, 500, 319, 55);
    }
     if(overArea(1009, 588, 319, 55)){
        fill(200, 200, 255, 150);
        noStroke();
        rect(1009, 588, 319, 55);
    }    
  }else{
  
  
  image(map, 0, 0);
  
  //draw scrolling film reel
  fill(190, 190, 255);
  noStroke();
  rect(1195, 0, 200, 700);
  fill(255);
  
  //scrolling sprockets
  scroll();
  for (int i = 0; i < 240; i++) {
    rect(1198, yPos + sprockets[i], 11, 11, 2);
  }
  //DRAW APPROPRIATE DECADES
  if (tens) {
    ArrayList<dataNode> node2010s = populate2010s();
    drawDecade(node2010s, magenta);
    drawLinks(node2010s);
    drawImages(node2010s);
  }

  if (noughties) {
    ArrayList<dataNode> node2000s = populate2000s();
    drawDecade(node2000s, magenta);
    drawLinks(node2000s);
    drawImages(node2000s);
  }
   
  if (ninties) {
    ArrayList<dataNode> node1990s = populate1990s();
    drawDecade(node1990s, magenta);
    drawLinks(node1990s);
    drawImages(node1990s);
  }
 
  if (eighties) {
    ArrayList<dataNode> node1980s = populate1980s();
    drawDecade(node1980s, magenta);
    drawLinks(node1980s);
    drawImages(node1980s);
  }
 
  if (seventies) {
    ArrayList<dataNode> node1970s = populate1970s();
    drawDecade(node1970s, magenta);
    drawLinks(node1970s);
    drawImages(node1970s);
  }
 
  if (sixties) {
    ArrayList<dataNode> node1960s = populate1960s();
    drawDecade(node1960s, magenta);
    drawLinks(node1960s);
    drawImages(node1960s);
  }
 
  if (fifties) {
    ArrayList<dataNode> node1950s = populate1950s();
    drawDecade(node1950s, magenta);
    drawLinks(node1950s);
    drawImages(node1950s);
  }
   
  if (forties) {
    ArrayList<dataNode> node1940s = populate1940s();
    drawDecade(node1940s, magenta);
    drawLinks(node1940s);
    drawImages(node1940s);
  }
  
  if (thirties) {
    ArrayList<dataNode> node1930s = populate1930s();
    drawDecade(node1930s, magenta);
    drawLinks(node1930s);
    drawImages(node1930s);
  }
 
  
  //draw text field at top
  fill(200, 200, 255, 150);
  noStroke();
  rect(0, 0, 1195, 50);
  
 
  //draw slider base bar near bottom
  fill(200, 200, 255, 230);
  rect(330, 640, 595, 10, 50);
  
//draw sliders
  strokeWeight(1.5);
  fill(200, 200,255, 200);
  stroke(255);
  rect(slide.getLeft(), slide.getTop(), slide.getWidth(), slide.getHeight());
  
  //draw about button
  fill(255);
  image(aboutIcon, 50, 470);
  if(overArea(50, 470, 200, 40)){
      fill(255,255,255, 100);
      noStroke();
      rect(50, 470, 200, 40);
  }
    //draw title icon in top left corner
  image(titleIcon, 50, 410);
  if(overArea(50, 410, 200, 58)){
    fill(255, 255, 255, 100);
    noStroke();
    rect(50, 410, 200, 58);
  }
  
  //date text
  textSize(18);
  fill(0);
  text("1930s", 350, 650);
  text("1940s", 416.25, 650);
  text("1950s", 482.5, 650);
  text("1960s", 548.75, 650);
  text("1970s", 615, 650);
  text("1980s", 681.25, 650);
  text("1990s", 747.5, 650);
  text("2000s", 813.75, 650);
  text("2010s", 880, 650);
  
  //DRAW THE KEY

  //label colors/node type
  noStroke();
  fill(magenta, linkColAdjust);
  rect(50, 575, 4, 8);
  fill(lime, linkColAdjust);
  rect(55, 578, 4, 8);
  
  fill(magenta, samePlaceColAdjust);
  rect(50, 552, 4, 8);
  fill(lime, samePlaceColAdjust);
  rect(55, 555, 4, 8);
  
  fill(magenta, originalColAdjust);
  rect(50, 530, 4, 8);
  fill(lime, originalColAdjust);
  rect(55, 533, 4, 8);
  
  ellipse(55, 600, 8, 8);
  //center, left, right 
  triangle(54, 615, 50, 625, 58, 625);
  rect(50, 635, 8, 8);
  
  stroke(15);
  strokeWeight(1);
  fill(0);
  textSize(14);
  textAlign(LEFT);
  text("Original Story Only", 70, 540);
  text("Story Location Maintained", 70, 562);
  text("Relocated Story", 70, 585);
  text("Walt Disney Studios",70, 605);
  text("Dreamworks Animation Studios", 70, 625);
  text("Pixar Animation Studios", 70, 645);
  textAlign(CENTER);
  }//end of else if not title or about
  
}//end of draw

void drawDecade(ArrayList<dataNode> list, color c) {
  for (int i = 0; i < list.size(); i++) {
    //if depiction node, color according to slider/adjust shade
    if (list.get(i).getType() == 0 && list.get(i).getOrigin()==null) {
      noStroke();
      fill(c,originalColAdjust);
    }//end of if depiction node
    else if(list.get(i).getType()==1 || (list.get(i).getType()==0 && list.get(i).getOrigin()!=null)){
      fill(c,linkColAdjust);
    }//end of if linked
    else{ //if same place
      fill(c,samePlaceColAdjust);
  }//end of if same place
  
  //now draw shapes according to studio
        
        if(list.get(i).getCompany()==0){ //if disney make a circle
          ellipse(list.get(i).getLong(), list.get(i).getLat(), 8, 8);
          if(overArea(list.get(i).getLong(), list.get(i).getLat(), 8, 8)) {
            ellipse(list.get(i).getLong(), list.get(i).getLat(), 15, 15);
            fill(50,55,50);
            textSize(25);
            text(list.get(i).name(), 615, 35);
           }
        }//end of if disney
        else if(list.get(i).getCompany()==1){//if dreamworks then triangle
             triangle(list.get(i).getLong()-5, list.get(i).getLat()+5,
             list.get(i).getLong(), list.get(i).getLat()-5,
             list.get(i).getLong()+5, list.get(i).getLat()+5);
        if(overArea(list.get(i).getLong(), list.get(i).getLat(), 5, 5)) {
             triangle(list.get(i).getLong()-10, list.get(i).getLat()+10,
             list.get(i).getLong(), list.get(i).getLat()-10,
             list.get(i).getLong()+10, list.get(i).getLat()+10);
              fill(50,50,50);
              textSize(25);
              text(list.get(i).name(), 615, 35);
         }
        }//end of if dreamworks
        else{//if pixar then rectangle
          rect(list.get(i).getLong(), list.get(i).getLat(), 8, 8);
          if(overArea(list.get(i).getLong(), list.get(i).getLat(), 8, 8)) {
            rect(list.get(i).getLong(), list.get(i).getLat(), 15, 15);
            fill(50,50,50);
            textSize(25);
            text(list.get(i).name(), 615, 35);
          }
      }//end of if pixar

  }//end of for loop
}//end of draw decade method

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

void drawImages(ArrayList<dataNode> list) {
  int j = 0;
  for(int i = 0; i < list.size(); i++) {
    dataNode node = list.get(i);
    if(node.getImage() != null) {
      image(node.getImage(), 1215, (yPos + 155*j));
      j++;
      //print("images placed at " + (yPos + 155*j));
    }
  }
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

void scroll() {
  if(overArea(1200, 0, 200, 20)) {
    if(mousePressed){
      yPos-=5;
    }else{
      yPos--;
    }
  }
  if(overArea(1200, 680, 200, 20) && yPos <= 0) {
    if(mousePressed){
      yPos+=5;
    }else{
    yPos++;
    }
  }
}


boolean overArea(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
