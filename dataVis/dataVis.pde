PImage map;
PImage disneyLogoNode, disneyStoryNode, disneyCharNode;
PImage dreamworksLogoNode, dreamworksStoryNode, dreamworksCharNode;
PImage pixarLogoNode, pixarStoryNode, pixarCharNode;
PImage fs;
PImage p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40;
PImage p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51,p52,p53,p54,p55,p56,p57,p58,p59,p60,p61,p62,p63,p64,p65,p66,p67,p68,p69,p70,p71,p72,p73,p74,p75,p76,p77,p78,p79,p80;
PImage p81, p82, p83;


color bg;
color c;
boolean thirties, forties, fifties, sixties, seventies, eighties, ninties, noughties, tens;

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



void setup() {
  size(1500, 700);
  //num = 0;
  background(255);
  fill(0);
  textFont(createFont("Georgia", 16));
  textAlign(CENTER, CENTER);
 

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

  p1 = loadImage("p1.png");
  p2 = loadImage("p2.png");
  p3 = loadImage("p3.png");
  p4 = loadImage("p4.png");
  p5 = loadImage("p5.png");
  p6 = loadImage("p6.png");
  p7 = loadImage("p7.png");
  p8 = loadImage("p8.png");
  p9 = loadImage("p9.png");
  p10 = loadImage("p10.png");
  p11 = loadImage("p11.png");
  p12 = loadImage("p12.png");
  p13 = loadImage("p13.png");
  p14 = loadImage("p14.png");
  p15 = loadImage("p15.png");
  p16 = loadImage("p16.png");
  p17 = loadImage("p17.png");
  p18 = loadImage("p18.png");
  p19 = loadImage("p19.png");
  p20 = loadImage("p20.png");
  p21 = loadImage("p21.png");
  p22 = loadImage("p22.png");
  p23 = loadImage("p23.png");
  p24 = loadImage("p24.png");
  p25 = loadImage("p25.png");
  p26 = loadImage("p26.png");
  p27 = loadImage("p27.png");
  p28 = loadImage("p28.png");
  p29 = loadImage("p29.png");
  p30 = loadImage("p30.png");
  p31 = loadImage("p31.png");
  p32 = loadImage("p32.png");
  p33 = loadImage("p33.png");
  p34 = loadImage("p34.png");
  p35 = loadImage("p35.png");
  p36 = loadImage("p36.png");
  p37 = loadImage("p37.png");
  p38 = loadImage("p38.png");
  p39 = loadImage("p39.png");
  p40 = loadImage("p40.png");
  p41 = loadImage("p41.png");
  p42 = loadImage("p42.png");
  p43 = loadImage("p43.png");
  p44 = loadImage("p44.png");
  p45 = loadImage("p45.png");
  p46 = loadImage("p46.png");
  p47 = loadImage("p47.png");
  p48 = loadImage("p48.png");
  p49 = loadImage("p49.png");
  p50 = loadImage("p50.png");
  p51 = loadImage("p51.png");
  p52 = loadImage("p52.png");
  p53 = loadImage("p53.png");
  p54 = loadImage("p54.png");
  p55 = loadImage("p55.png");
  p56 = loadImage("p56.png");
  p57 = loadImage("p57.png");
  p58 = loadImage("p58.png");
  p59 = loadImage("p59.png");
  p60 = loadImage("p60.png");
  p61 = loadImage("p61.png");
  p62 = loadImage("p62.png");
  p63 = loadImage("p63.png");
  p64 = loadImage("p64.png");
  p65 = loadImage("p65.png");
  p66 = loadImage("p66.png");
  p67 = loadImage("p67.png");
  p68 = loadImage("p68.png");
  p69 = loadImage("p69.png");
  p70 = loadImage("p70.png");
  p71 = loadImage("p71.png");
  p72 = loadImage("p72.png");
  p73 = loadImage("p73.png");
  p74 = loadImage("p74.png");
  p75 = loadImage("p75.png");
  p76 = loadImage("p76.png");
  p77 = loadImage("p77.png");
  p78 = loadImage("p78.png");
  p79 = loadImage("p79.png");
  p80 = loadImage("p80.png");
  p81 = loadImage("p81.png");
  p82 = loadImage("p82.png");
   
  bg = 255;
  c = color(0);
}

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
}

void draw() {
  
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
}

void drawDecade(ArrayList<dataNode> list) {
  for (int i = 0; i < list.size(); i++) {
    fill(0,0,list.get(i).getCompany() * 100);
    //char ethnicity node
    if (list.get(i).getType() == 0 && list.get(i).getOrigin()==null) {
      ellipse(list.get(i).getLong(), list.get(i).getLat(), 5, 5);
      if(overArea(list.get(i).getLong(), list.get(i).getLat(), 5, 5)) {
        ellipse(list.get(i).getLong(), list.get(i).getLat(), 15, 15);
        fill(50,55,50);
        //text(list[i].name(), list[i].getLong() - 5, list[i].getLat() -5);
      }
    } else if (list.get(i).getType()==1 || (list.get(i).getType()==0 && list.get(i).getOrigin()!=null)) {
      rect(list.get(i).getLong(), list.get(i).getLat(), 5, 5);
      if(overArea(list.get(i).getLong(), list.get(i).getLat(), 5, 5)) {
        rect(list.get(i).getLong(), list.get(i).getLat(), 15, 15);
        fill(50,50,50);
        //text(list[i].name(), list[i].getLong() - 5, list[i].getLat() -5);
      }
    }else{
       triangle(list.get(i).getLong()-5, list.get(i).getLat()+5,
           list.get(i).getLong(), list.get(i).getLat()-5,
           list.get(i).getLong()+5, list.get(i).getLat()+5);
      if(overArea(list.get(i).getLong(), list.get(i).getLat(), 5, 5)) {
        triangle(list.get(i).getLong()-10, list.get(i).getLat()+10,
           list.get(i).getLong(), list.get(i).getLat()-10,
           list.get(i).getLong()+10, list.get(i).getLat()+10);
        fill(50,50,50);
        //text(list[i].name(), list[i].getLong() - 5, list[i].getLat() -5);
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
