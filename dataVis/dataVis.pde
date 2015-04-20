PImage map;
PImage disneyLogoNode, disneyStoryNode, disneyCharNode;
PImage dreamworksLogoNode, dreamworksStoryNode, dreamworksCharNode;
PImage pixarLogoNode, pixarStoryNode, pixarCharNode;
PImage fs30, fs40, fs50, fs60, fs70, fs80, fs90, fs00, fs10;

PImage titleScreen;

color bg;
color c;
color magenta2, magenta, lime2, lime, gold;
boolean thirties, forties, fifties, sixties, seventies, eighties, ninties, noughties, tens;
boolean thirties2, forties2, fifties2, sixties2, seventies2, eighties2, ninties2, noughties2, tens2;

boolean title;

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
  slide = new slider(319, 319+50, 630, 630+30, 10, 50, 30);
  slide2 = new slider(870, 870+50, 630, 630+30, 10, 50, 30);
  
  linkColAdjust = 255;
  originalColAdjust = 80;
  samePlaceColAdjust = 170;
  
 
}


void keyPressed(){
  if(key==CODED){
    if(keyCode==RIGHT){
      title = false;
    }
  }
}
void moveSlider(slider s){
  if(s.getSelected()){
  float newLeft = s.getLeft() + (mouseX-pmouseX);
      float newRight = s.getRight() + (mouseX-pmouseX);
      if(newLeft>318 && newRight<920){
        s.setLeft(newLeft);
        s.setRight(newRight);
      }
  }
}

void mouseDragged(){
  //drag slider
  if(mouseX > slide.getLeft() && mouseX < slide.getRight() && mouseY > slide.getTop() && mouseY < slide.getBot()){
    if(mousePressed && mouseButton == LEFT){
      slide.setSelected(true);
      slide2.setSelected(false);
    }else{
      slide.setSelected(false);
    }
  }
   if(mouseX > slide2.getLeft() && mouseX < slide2.getRight() && mouseY > slide2.getTop() && mouseY < slide2.getBot()){
      if(mousePressed && mouseButton == RIGHT){
        slide2.setSelected(true);
        slide.setSelected(false);
      }
      else{
        slide2.setSelected(false);
       }
   }
   
   moveSlider(slide); moveSlider(slide2);
    //switch decades according to location of slider
    //okay these are definitely not exact but yknow what it works
    
    float left = slide.getLeft(); float right = slide.getRight();
    float left2 = slide2.getLeft(); float right2 = slide2.getRight();
    if(left >= 318 && right < 380){ 
      thirties = true;
    }else{ thirties = false;}
    if(left >= 380 && right < 451){
      forties = true;
    }else{ forties = false;}
    if(left >= 451 && right < 517.5){
      fifties = true;
    }else{ fifties = false;}
    if(left >= 517.5 && right < 584){
      sixties = true;
    }else{ sixties = false;}
    if(left >=584 && right < 650.5){
      seventies = true;
    }else{ seventies = false;}
    if(left >=650.5 && right < 717){
      eighties = true;
    }else{ eighties = false;}
    if(left >=717 && right < 783.5){
      ninties =true;
    }else{ ninties = false;}
    if(left >= 783.5 && right < 850){
      noughties = true;
    }else{ noughties = false;}
    if(left >=850 && right <= 920) {
      tens = true;
    } else{ tens = false;}
    
    //for second slider set
     if(left2 >= 318 && right2 < 380){ 
      thirties2 = true;
    }else{ thirties2 = false;}
    if(left2 >= 380 && right2 < 451){
      forties2 = true;
    }else{ forties2 = false;}
    if(left2 >= 451 && right2 < 517.5){
      fifties2 = true;
    }else{ fifties2 = false;}
    if(left2 >= 517.5 && right2 < 584){
      sixties2 = true;
    }else{ sixties2 = false;}
    if(left2 >=584 && right2 < 650.5){
      seventies2 = true;
    }else{ seventies2 = false;}
    if(left2 >=650.5 && right2 < 717){
      eighties2 = true;
    }else{ eighties2 = false;}
    if(left2 >=717 && right2 < 783.5){
      ninties2 =true;
    }else{ ninties2 = false;}
    if(left2 >= 783.5 && right2 < 850){
      noughties2 = true;
    }else{ noughties2 = false;}
    if(left2 >=850 && right2 <= 920) {
      tens2 = true;
    } else{ tens2 = false;}
    
    
  
}//end of if mouse dragged

void draw() {
  if(title){
    image(titleScreen, 0, 0);
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
  if(tens2){
    ArrayList<dataNode> node2010s = populate2010s();
    drawDecade(node2010s, lime);
    drawLinks(node2010s);
    drawImages(node2010s);
  }
  if (noughties) {
    ArrayList<dataNode> node2000s = populate2000s();
    drawDecade(node2000s, magenta);
    drawLinks(node2000s);
    drawImages(node2000s);
  }
   if (noughties2) {
    ArrayList<dataNode> node2000s = populate2000s();
    drawDecade(node2000s, lime);
    drawLinks(node2000s);
    drawImages(node2000s);
  }
  if (ninties) {
    ArrayList<dataNode> node1990s = populate1990s();
    drawDecade(node1990s, magenta);
    drawLinks(node1990s);
    drawImages(node1990s);
  }
   if (ninties2) {
    ArrayList<dataNode> node1990s = populate1990s();
    drawDecade(node1990s, lime);
    drawLinks(node1990s);
    drawImages(node1990s);
  }
  if (eighties) {
    ArrayList<dataNode> node1980s = populate1980s();
    drawDecade(node1980s, magenta);
    drawLinks(node1980s);
    drawImages(node1980s);
  }
   if (eighties2) {
    ArrayList<dataNode> node1980s = populate1980s();
    drawDecade(node1980s, lime);
    drawLinks(node1980s);
    drawImages(node1980s);
  }
  if (seventies) {
    ArrayList<dataNode> node1970s = populate1970s();
    drawDecade(node1970s, magenta);
    drawLinks(node1970s);
    drawImages(node1970s);
  }
  if (seventies2) {
    ArrayList<dataNode> node1970s = populate1970s();
    drawDecade(node1970s, lime);
    drawLinks(node1970s);
    drawImages(node1970s);
  }
  if (sixties) {
    ArrayList<dataNode> node1960s = populate1960s();
    drawDecade(node1960s, magenta);
    drawLinks(node1960s);
    drawImages(node1960s);
  }
   if (sixties2) {
    ArrayList<dataNode> node1960s = populate1960s();
    drawDecade(node1960s, lime);
    drawLinks(node1960s);
    drawImages(node1960s);
  }
  if (fifties) {
    ArrayList<dataNode> node1950s = populate1950s();
    drawDecade(node1950s, magenta);
    drawLinks(node1950s);
    drawImages(node1950s);
  }
    if (fifties2) {
    ArrayList<dataNode> node1950s = populate1950s();
    drawDecade(node1950s, lime);
    drawLinks(node1950s);
    drawImages(node1950s);
  }
  if (forties) {
    ArrayList<dataNode> node1940s = populate1940s();
    drawDecade(node1940s, magenta);
    drawLinks(node1940s);
    drawImages(node1940s);
  }
    if (forties2) {
    ArrayList<dataNode> node1940s = populate1940s();
    drawDecade(node1940s, lime);
    drawLinks(node1940s);
    drawImages(node1940s);
  }
  if (thirties) {
    ArrayList<dataNode> node1930s = populate1930s();
    drawDecade(node1930s, magenta);
    drawLinks(node1930s);
    drawImages(node1930s);
  }
    if (thirties2) {
    ArrayList<dataNode> node1930s = populate1930s();
    drawDecade(node1930s, lime);
    drawLinks(node1930s);
    drawImages(node1930s);
  }
  
  //draw text field at top
  fill(200, 200, 255, 150);
  noStroke();
  rect(0, 0, 1200, 50);
  //draw slider base bar near bottom
  fill(200, 200, 255, 230);
  rect(315, 640, 610, 10, 50);
  
//draw sliders
  strokeWeight(1.5);
  fill(magenta2);
  stroke(255);
  rect(slide.getLeft(), slide.getTop(), slide.getWidth(), slide.getHeight());
  fill(lime2);
  stroke(255);
  rect(slide2.getLeft(), slide2.getTop(), slide2.getWidth(), slide2.getHeight());
  
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
  
  //key

  //label colors/node type
  noStroke();
  fill(magenta, linkColAdjust);
  rect(50, 550, 4, 8);
  fill(lime, linkColAdjust);
  rect(55, 553, 4, 8);
  
  fill(magenta, samePlaceColAdjust);
  rect(50, 520, 4, 8);
  fill(lime, samePlaceColAdjust);
  rect(55, 523, 4, 8);
  
  fill(magenta, originalColAdjust);
  rect(50, 490, 4, 8);
  fill(lime, originalColAdjust);
  rect(55, 493, 4, 8);
  
  ellipse(55, 585, 8, 8);
  //center, left, right 
  triangle(54, 600, 50, 610, 58, 610);
  rect(50, 620, 8, 8);
  
  stroke(15);
  strokeWeight(1);
  fill(0);
  textAlign(LEFT);
  text("Original Story Only", 70, 505);
  text("Story Location Maintained", 70, 532);
  text("Relocated Story", 70, 560);
  text("Walt Disney Studios",70, 590);
  text("Dreamworks Animation Studios", 70, 610);
  text("Pixar Animation Studios", 70, 630);
  textAlign(CENTER);
  }
  
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
    yPos--;
  }
  if(overArea(1200, 680, 200, 20) && yPos <= 0) {
    yPos++;
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
