PImage p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40;
PImage p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51,p52,p53,p54,p55,p56,p57,p58,p59,p60,p61,p62,p63,p64,p65,p66,p67,p68,p69,p70,p71,p72,p73,p74,p75,p76,p77,p78,p79,p80;
PImage p81, p82, p83, p84, m1,m2,m3,m4,m5,m6,m7,m8,m9;
PImage m10,m11,m12,m13,m14,m15,m16,m17,m18,m19,m20,m21,m22,m23,m24,m25,m26,m27,m28,m29,m30,m31,m32,m33,m34,m35,m36,m37,m38,m39,m40,m41,m42,m43,m44,m45,m46,m47,m48,m49,m50;
PImage m51,m52,m53,m54,m55,m56,m57,m58,m59,m60,m61,m62,m63,m64,m65,m66,m67,m68,m69,m70,m71,m72,m73,m74,m75,m76,m77,m78,m79,m80,m81,m82,m83,m84,m85;

class dataNode {
  int longitude, lattitude;
  int company;
  int type;
  String name;
  int year;
  dataNode origin;
  PImage image;
  PImage window;
  
  dataNode(int lon, int lat, int c, int t, String n, int y, dataNode o, PImage img, PImage win) {
    longitude = lon;
    lattitude = lat;
    company = c;
    type = t;
    name = n;
    year = y;
    origin = o;
    image = img;
    window = win;
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
  
  dataNode getOrigin(){
    return origin;
  }
  
  PImage getImage() {
    return image;
  }
  
  PImage getWindow() {
    return window;
  }
}

ArrayList<dataNode> populate2010s(){
//  table = loadTable("data.csv", "header");
ArrayList<dataNode> node2010s = new ArrayList<dataNode>();
// COMPANY
// 0 = disney
// 1 = dreamworks
// 2 = pixar

// TYPE
// 0 = character ethnicity
// 1 = story origin
// 2 = office

//~350 is the equator
//populate nodes

  dataNode bh6Org = new dataNode(1130,290,0, 1, "Big Hero 6", 2014, null,null,m8);
  dataNode bh6 = new dataNode(170,280, 0, 0, "Big Hero 6", 2014, bh6Org,p84,m8);
  dataNode frozen = new dataNode(655, 185, 0, 2, "Frozen", 2013, null,p83,m14);
  dataNode wreckit = new dataNode(235, 270, 0, 2, "Wreck-It Ralph", 2012, null,p82,m69);
  dataNode tangled = new dataNode(658, 225, 0, 2, "Tangled", 2010, null, p81,m53);
  //how to train your dragon was a book so it does have an origin
  dataNode dragon = new dataNode(680, 165, 1, 2, "How to Train Your Dragon", 2010, null, p80,m20);
  dataNode shrek4Org = new dataNode(660, 245, 1, 1, "Shrek Forever After", 2010, null, null,m50);
  dataNode shrek4 = new dataNode(600, 200, 1, 0, "Shrek Forever After", 2010, shrek4Org, p79,m50);
  dataNode mega = new dataNode(327, 290, 2, 0, "Megamind", 2010, null, p78,m31);
  dataNode panda2 = new dataNode(1010, 325, 1, 0, "Kung Fu Panda 2", 2011, null, p77,m23);
  dataNode puss = new dataNode(645, 245, 1, 2, "Puss in Boots", 2011, null,p76,m37);
  dataNode mad3 = new dataNode(615, 245, 1, 0, "Madagascar 3", 2012, null,p75,m72);
  dataNode riseOrg = new dataNode(670, 225, 0, 1, "Rise of the Guardians", 2012, null,null,m44);
  dataNode rise = new dataNode(210, 315, 2, 0, "Rise of the Guardians", 2012, riseOrg,p74,m44);
  dataNode croods = new dataNode(300, 300, 1, 0, "The Croods", 2013, null,p73,m56);
  dataNode turbo = new dataNode(175, 270, 1, 0, "Turbo", 2013, null,p72,m67);//WHYY THIS MOVIE snails??
  //peabody and sherman based off rocky and bullwinkle characters from 1960s america (minnesota)
  dataNode peabod = new dataNode(315, 280, 1, 2, "Mr. Peabody and Sherman", 2014, null,p71,m32);
  dataNode dragon2 = new dataNode(695, 165, 1, 2, "How to Train Your Dragon 2", 2015, null,p70,m21);
  dataNode penguins = new dataNode(670, 280, 1, 0, "Penguins of Madagascar", 2015, null,p69,m39);
  //home is based on an american book (2007), takes place in florida
  dataNode home = new dataNode(305, 335, 1, 2, "Home", 2015, null,p68,m17);
  dataNode toy3 = new dataNode(200, 295, 2, 0, "Toy Story 3", 2010, null,p67,m76);
  dataNode cars2 = new dataNode(1140, 270, 2, 0, "Cars 2", 2011, null,p66,m73);
  dataNode brave = new dataNode(600, 190, 2, 0, "Brave", 2012, null,p65,m79);
  
  node2010s.add(bh6Org); node2010s.add(bh6);
  node2010s.add(frozen);
  node2010s.add(wreckit);
  node2010s.add(tangled);
  node2010s.add(dragon);
  node2010s.add(shrek4Org); node2010s.add(shrek4);
  node2010s.add(mega);
  node2010s.add(panda2);
  node2010s.add(puss);
  node2010s.add(mad3);
  node2010s.add(riseOrg); node2010s.add(rise);
  node2010s.add(croods);
  node2010s.add(turbo);
  node2010s.add(peabod);
  node2010s.add(dragon2);
  node2010s.add(penguins);
  node2010s.add(home);
  node2010s.add(toy3);
  node2010s.add(cars2);
  node2010s.add(brave);

  return node2010s;  
    //dataNode(int lon, int lat, int c, int t, String n, int y)  
}

ArrayList<dataNode> populate2000s(){
  ArrayList<dataNode> node2000s = new ArrayList<dataNode>();
  dataNode empOrg = new dataNode(670, 223, 0, 1, "The Emperor's New Groove", 2000, null,null,m57);
  dataNode emp = new dataNode(345, 545, 0, 0, "The Emperor's New Groove", 2000, empOrg,p64,m57);
  dataNode lilo = new dataNode(30, 373, 0, 0, "Lilo and Stitch", 2001, null,p63,m24);
  //should we do dinosaur??
  //atlantis??
  dataNode treasOrg = new dataNode(600, 222, 0, 1, "Treasure Planet", 2002, null,null,m62);
  dataNode treas = new dataNode(1190, 20, 0, 0, "Treasure Planet", 2002, treasOrg,p62,m62);
  dataNode bear = new dataNode(38, 125, 0, 0, "Brother Bear", 2003, null,p61,m7);
  dataNode range = new dataNode(180, 270, 0, 0, "Home on the Range", 2004, null,p60,m19);
  //chicken little??
  dataNode robinson = new dataNode(235, 285, 0, 2, "Meet the Robinsons", 2007, null,p59,m33);
  dataNode bolt = new dataNode(175, 300, 0, 0, "Bolt", 2008, null,p58,m4);
  dataNode frogOrg = new dataNode(628, 233, 0, 1, "The Princess and the Frog", 2009, null,null,m63);
  dataNode frog = new dataNode(265, 320, 0, 0, "The Princess and the Frog", 2009, frogOrg,p57,m63);
  node2000s.add(empOrg);
  node2000s.add(emp);
  node2000s.add(lilo);
  node2000s.add(treasOrg);
  node2000s.add(treas);
  node2000s.add(bear);
  node2000s.add(range);
  
  //dreamworks
  dataNode doradoOrg = new dataNode(375, 450, 1, 1, "The Road to El Dorado", 2000, null,null,m65);
  dataNode dorado = new dataNode(590, 285, 1, 0, "The Road to El Dorado", 2000, doradoOrg,p56,m65);
  dataNode chickenRun = new dataNode(590, 200, 1, 0, "Chicken Run", 2000, null,p55,m12);
  dataNode shrekOrg = new dataNode(640, 250, 1, 1, "Shrek", 2001, null,null,m47);
  dataNode shrek = new dataNode(607, 220, 1, 0, "Shrek", 2001, shrekOrg,p54,m47);
  dataNode spirit = new dataNode(195, 285, 1, 0, "Spirit: Stallion of the Cimarron", 2002, null,p53,m51);
  dataNode sinbadOrg = new dataNode(765, 350, 1, 1, "Sinbad: Legend of the Seven Seas", 2003, null,null,m46);
  dataNode sinbad = new dataNode(675, 300, 1, 0, "Sinbad: Legend of the Seven Seas", 2003, sinbadOrg,p52,m46);
  dataNode shrek2Org = new dataNode(655, 242, 1, 1, "Shrek 2", 2004, null,null,m48);
  dataNode shrek2 = new dataNode(609, 212, 1, 0, "Shrek 2", 2004, shrek2Org,p51,m48);
  //shark tale??
  dataNode mad = new dataNode(795, 550, 1, 0, "Madagascar", 2005, null,p50,m29);
  dataNode gromit = new dataNode(599, 200, 1, 0, "Wallace and Gromit: The Curse of the Were-Rabbit", 2005, null,p49,m68);
  dataNode hedge = new dataNode(300, 290, 1, 0, "Over the Hedge", 2006, null,p48,m35);
  dataNode flushed = new dataNode(602, 208, 1, 0, "Flushed Away", 2006, null,p47,m15);
  dataNode shrek3Org = new dataNode(666, 238, 1, 1, "Shrek the Third", 2007, null,null,m49);
  dataNode shrek3 = new dataNode(602, 190, 1, 0, "Shrek the Third", 2007, shrek3Org,p46,m49);
  dataNode bee = new dataNode(280, 275, 1, 0, "Bee Movie", 2007, null,p45,m9);
  dataNode panda = new dataNode(1010, 325, 1, 0, "Kung Fu Panda", 2008, null,p44,m22);
  dataNode mad2 = new dataNode(670, 400, 1, 0, "Madagascar: Escape 2 Africa", 2008, null,p43,m30);
  //dataNode monsVSaliens = new dataNode(200, 265, 1, 0, "Monsters vs. Aliens", 2009, null,p42,);
  
  node2000s.add(doradoOrg); node2000s.add(dorado);
  node2000s.add(chickenRun); 
  node2000s.add(shrekOrg); node2000s.add(shrek);
  node2000s.add(spirit);
  node2000s.add(sinbadOrg); node2000s.add(sinbad);
  node2000s.add(shrek2Org); node2000s.add(shrek2);
  node2000s.add(mad);
  node2000s.add(gromit);
  node2000s.add(hedge);
  node2000s.add(flushed);
  node2000s.add(shrek3Org); node2000s.add(shrek3);
  node2000s.add(bee);
  node2000s.add(panda);
  node2000s.add(mad2);
  //node2000s.add(monsVSaliens);
    
  //pixar
  dataNode nemo = new dataNode(1025, 600, 2, 0, "Finding Nemo", 2003, null,p41,m16);
  dataNode incred = new dataNode(330, 290, 2, 0, "The Incredibles", 2004, null,p40,m60);
  dataNode cars = new dataNode(165, 280, 2, 0, "Cars", 2006, null,p39,m10);
  dataNode rat = new dataNode(625, 245, 2, 0, "Ratatouille", 2007, null,p38,m41);
  dataNode walle = new dataNode(330, 300, 2, 0, "Wall-E", 2008, null,p37,m74);
  dataNode up = new dataNode(200, 300, 2, 0, "Up", 2009, null,p36,m78);
  //what is monsters inc?
  node2000s.add(nemo);
  node2000s.add(incred);
  node2000s.add(cars);
  node2000s.add(rat);
  node2000s.add(walle);
  node2000s.add(up);
  return node2000s;
}

ArrayList<dataNode> populate1990s(){
  ArrayList<dataNode> node1990s = new ArrayList<dataNode>();
  //disney
  dataNode rescDown = new dataNode(1110, 600, 0, 0, "The Rescuers Down Under", 1990, null,p35,m42);
  dataNode beauty = new dataNode(623, 245, 0, 2, "Beauty and the Beast", 1991, null,p34,m6);
  dataNode aladdin = new dataNode(765, 360, 0, 2, "Aladdin", 1992, null,p33,m2);
  dataNode lionOrg = new dataNode(600, 203, 0, 1, "The Lion King", 1994, null,null,m26);
  dataNode lion = new dataNode(670, 400, 0, 0, "The Lion King", 1994, lionOrg,p32,m26);
  dataNode pocah = new dataNode(300, 305, 0, 2, "Pocahontas", 1995, null,p31,m36);
  dataNode hunch = new dataNode(633, 250, 0, 2, "The Hunchback of Notre Dame", 1996, null,p30,m18);
  dataNode herc = new dataNode(695, 305, 0, 2, "Hercules", 1997, null,p29,m17);
  dataNode mulan = new dataNode(1015, 345, 0, 2, "Mulan", 1998, null,p28,m28);
  dataNode tarzan = new dataNode(695, 410, 0, 2, "Tarzan", 1999, null,p27,m53);
  //not including fantasia 2000, which was 1999
  node1990s.add(rescDown);
  node1990s.add(beauty);
  node1990s.add(aladdin);
  node1990s.add(lionOrg);
  node1990s.add(lion);
  node1990s.add(pocah);
  node1990s.add(hunch);
  node1990s.add(herc);
  node1990s.add(mulan);
  node1990s.add(tarzan);
  
  //dreamworks
  //dataNode prince = new dataNode(715, 355, 1, 2, "The Prince of Egypt", 1998, null,p26);
  //dataNode antz = new dataNode(285, 290, 1, 0, "Antz", 1998, null,p25);
  //node1990s.add(prince);
  //node1990s.add(antz);
  
  //pixar
  dataNode toy = new dataNode(200, 295, 2, 0, "Toy Story", 1995, null,p24,m75);
  dataNode bug = new dataNode(200, 265, 2, 0, "A Bug's Life", 1998, null,p23,m80);
  dataNode toy2 = new dataNode(190, 297, 2, 0, "Toy Story 2", 1999, null,p22,m76);
  
  node1990s.add(toy);
  node1990s.add(bug);
  node1990s.add(toy2);
  
  return node1990s;  
}

ArrayList<dataNode> populate1980s(){
  ArrayList<dataNode> node1980s = new  ArrayList<dataNode>();
  //disney
  dataNode fox = new dataNode(307, 290, 0, 2, "The Fox and the Hound", 1981, null,p21,m58);
  node1980s.add(fox);
  dataNode cauldron = new dataNode(605, 222, 0, 2, "The Black Cauldron", 1985, null,p20,m55);
  node1980s.add(cauldron);
  dataNode mouse = new dataNode(610, 210, 0, 2, "The Great Mouse Detective", 1986, null,p19,m59);
  node1980s.add(mouse);
  dataNode oliverOrigin = new dataNode(600, 195, 0, 1, "Oliver & Company", 1988, null,null,m34);
  node1980s.add(oliverOrigin);
  dataNode oliver = new dataNode(320, 290, 0, 0, "Oliver & Company", 1988, oliverOrigin,p18,m34);
  node1980s.add(oliver);
  dataNode mermaid = new dataNode(655, 200, 0, 2, "The Little Mermaid", 1989, null,p17,m27);
  node1980s.add(mermaid);
  return node1980s; 
}

ArrayList<dataNode> populate1970s(){
   ArrayList<dataNode> node1970s = new ArrayList<dataNode>();
  dataNode cats = new dataNode(623, 245, 0, 2, "The Aristocats", 1970, null,p16,m71);
  node1970s.add(cats);
  dataNode robin = new dataNode(605, 220, 0, 2, "Robin Hood", 1973, null,p15,m43);
  node1970s.add(robin);
  dataNode winnie = new dataNode(605, 205, 0, 2, "The Many Adventures of Winnie the Pooh", 1977, null,p14,m70);
  node1970s.add(winnie);
  dataNode rescuersOrg = new dataNode(595, 187, 0, 1, "The Rescuers", 1977, null,null,m64);
  node1970s.add(rescuersOrg);
  dataNode rescuers = new dataNode(320, 296, 0, 0, "The Rescuers", 1977, rescuersOrg,p13,m64);
  node1970s.add(rescuers);
  return node1970s;
}

ArrayList<dataNode> populate1960s(){
   ArrayList<dataNode> node1960s = new  ArrayList<dataNode>();
  dataNode dalma = new dataNode(605, 202, 0, 2, "One Hundred and One Dalmatians", 1961, null,p12,m1);
  node1960s.add(dalma);
  dataNode sword = new dataNode(605, 218, 0, 2, "The Sword in the Stone", 1963, null,p11,m66);
  node1960s.add(sword);
  dataNode jungle = new dataNode(895, 375, 0, 2, "The Jungle Book", 1967, null,p10,m61);
  node1960s.add(jungle);
  return node1960s;
}

ArrayList<dataNode> populate1950s(){
   ArrayList<dataNode> node1950s = new  ArrayList<dataNode>();
  dataNode cind = new dataNode(640, 245, 0, 2, "Cinderella", 1950, null,p9,m11);
  node1950s.add(cind);
  dataNode alice = new dataNode(605, 205, 0, 2, "Alice in Wonderland", 1951, null,p8,m3);
  node1950s.add(alice);
  dataNode peter = new dataNode(605, 190, 0, 2, "Peter Pan", 1953, null,p7,m40);
  node1950s.add(peter);
  //lady and tramp was a book!
  dataNode lady = new dataNode(270, 305, 0, 2, "Lady and the Tramp", 1955, null,p6,m25);
  node1950s.add(lady);
  dataNode sleeping = new dataNode(620, 245, 0, 2, "Sleeping Beauty", 1959, null,p5,m45);
  node1950s.add(sleeping);
  return node1950s;
}

ArrayList<dataNode> populate1940s(){
   ArrayList<dataNode> node1940s = new  ArrayList<dataNode>();
  //bambi was an austrian book, adapted to america
  dataNode bambiOrg = new dataNode(665, 245, 0, 1, "Bambi", 1942, null, null,m5);
  node1940s.add(bambiOrg);
  dataNode bambi = new dataNode(300, 290, 0, 0, "Bambi", 1942, bambiOrg,p4,m5);
  node1940s.add(bambi);
  dataNode dumbo = new dataNode(305, 315, 0, 2, "Dumbo", 1941, null,p3,m13);
  node1940s.add(dumbo);
  dataNode pino = new dataNode(675, 285, 0, 2, "Pinocchio", 1940, null,p2,m38);
  node1940s.add(pino);
  //war films? fantasia?
  return node1940s;
}

ArrayList<dataNode> populate1930s(){
   ArrayList<dataNode> node1930s = new  ArrayList<dataNode>();
  dataNode snow = new dataNode(635, 233, 0, 2, "Snow White and the Seven Dwarfs", 1937, null, p1,m52);
  node1930s.add(snow);
 // node1930s.add(new dataNode(630, 240, 0, 0, "Snow White and the Seven Dwarfs", 1937, 
   // node1930s.get(0));
  return node1930s;
}
  
//Load Images here???? eh why not?

void loadImages() {
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
  m1 = loadImage("101d.png");
  m2 = loadImage("a.png");
  m3 = loadImage("aiw.png");
  m4 = loadImage("b.png");
  m5 = loadImage("bambi.png");
  m6 = loadImage("batb.png");
  m7 = loadImage("bb.png");
  m8 = loadImage("bh6.png");
  m9 = loadImage("bm.png");
  m10 = loadImage("cars.png");
  m11 = loadImage("cinderella.png");
  m12 = loadImage("cr.png");
  m13 = loadImage("dumbo.png");
  m14 = loadImage("f.png");
  m15 = loadImage("fa.png");
  m16 = loadImage("fn.png");
  m17 = loadImage("h.png");
  m18 = loadImage("hbond.png");
  m19 = loadImage("hotr.png");
  m20 = loadImage("httyd.png");
  m21 = loadImage("httyd2.png");
  m22 = loadImage("kfp1.png");
  m23 = loadImage("kfp2.png");
  m24 = loadImage("las.png");
  m25 = loadImage("latt.png");
  m26 = loadImage("lk.png");
  m27 = loadImage("lm.png");
  m28 = loadImage("m.png");
  m29 = loadImage("m1.png");
  m30 = loadImage("m2.png");
  m31 = loadImage("mm.png");
  m32 = loadImage("mpas.png");
  m33 = loadImage("mtr.png");
  m34 = loadImage("oac.png");
  m35 = loadImage("oth.png");
  m36 = loadImage("p.png");
  m37 = loadImage("pib.png");
  m38 = loadImage("pinnocchio.png");
  m39 = loadImage("pom.png");
  m40 = loadImage("pp.png");
  m41 = loadImage("rat.png");
  m42 = loadImage("rdu.png");
  m43 = loadImage("rh.png");
  m44 = loadImage("rotg.png");
  m45 = loadImage("sb.png");
  m46 = loadImage("sblot7s.png");
  m47 = loadImage("shrek.png");
  m48 = loadImage("shrek2.png");
  m49 = loadImage("shrek3.png");
  m50 = loadImage("shrek4.png");
  m51 = loadImage("ssotc.png");
  m52 = loadImage("sw.png");
  m53 = loadImage("t.png");
  m54 = loadImage("tangled.png");
  m55 = loadImage("tbc.png");
  m56 = loadImage("tc.png");
  m57 = loadImage("tenc.png");
  m58 = loadImage("tfath.png");
  m59 = loadImage("tgmd.png");
  m60 = loadImage("ti.png");
  m61 = loadImage("tjb.png");
  m62 = loadImage("tp.png");
  m63 = loadImage("tpatf.png");
  m64 = loadImage("tr.png");
  m65 = loadImage("trted.png");
  m66 = loadImage("tsats.png");
  m67 = loadImage("turbo.png");
  m68 = loadImage("wag.png");
  m69 = loadImage("wir.png");
  m70 = loadImage("wtp.png");
  m71 = loadImage("cats.png");
  m72 = loadImage("m3.png");
  m73 = loadImage("cars2.png");
  m74 = loadImage("walle.png");
  m75 = loadImage("ts.png");
  m76 = loadImage("ts2.png");
  m77 = loadImage("ts3.png");
  m78 = loadImage("up.png");
  m79 = loadImage("brave.png");
  m80 = loadImage("bl.png");
//  m81 = loadImage(".png");
//  m82 = loadImage(".png");
//  m83 = loadImage(".png");
//  m84 = loadImage(".png");
//  m85 = loadImage(".png");
//  m86 = loadImage(".png");
//  m87 = loadImage(".png");
//  m88 = loadImage(".png");
//  m89 = loadImage(".png");
}
