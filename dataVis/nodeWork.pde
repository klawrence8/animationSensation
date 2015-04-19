PImage p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40;
PImage p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51,p52,p53,p54,p55,p56,p57,p58,p59,p60,p61,p62,p63,p64,p65,p66,p67,p68,p69,p70,p71,p72,p73,p74,p75,p76,p77,p78,p79,p80;
PImage p81, p82, p83, p84;

class dataNode {
  int longitude, lattitude;
  int company;
  int type;
  String name;
  int year;
  dataNode origin;
  PImage image;
  
  dataNode(int lon, int lat, int c, int t, String n, int y, dataNode o, PImage img) {
    longitude = lon;
    lattitude = lat;
    company = c;
    type = t;
    name = n;
    year = y;
    origin = o;
    image = img;
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

  dataNode bh6Org = new dataNode(1130,290,0, 1, "Big Hero 6", 2014, null,null);
  dataNode bh6 = new dataNode(170,280, 0, 0, "Big Hero 6", 2014, bh6Org,p84);
  dataNode frozen = new dataNode(655, 185, 0, 2, "Frozen", 2013, null,p83);
  dataNode wreckit = new dataNode(235, 270, 0, 2, "Wreck-It Ralph", 2012, null,p82);
  dataNode tangled = new dataNode(658, 225, 0, 2, "Tangled", 2010, null, p81);
  //how to train your dragon was a book so it does have an origin
  dataNode dragon = new dataNode(680, 165, 1, 2, "How to Train Your Dragon", 2010, null, p80);
  dataNode shrek4Org = new dataNode(660, 245, 1, 1, "Shrek Forever After", 2010, null, null);
  dataNode shrek4 = new dataNode(600, 200, 1, 0, "Shrek Forever After", 2010, shrek4Org, p79);
  dataNode mega = new dataNode(327, 290, 2, 0, "Megamind", 2010, null, p78);
  dataNode panda2 = new dataNode(1010, 325, 1, 0, "Kung Fu Panda 2", 2011, null, p77);
  dataNode puss = new dataNode(645, 245, 1, 2, "Puss in Boots", 2011, null,p76);
  dataNode mad3 = new dataNode(615, 245, 1, 0, "Madagascar 3", 2012, null,p75);
  dataNode riseOrg = new dataNode(670, 225, 0, 1, "Rise of the Guardians", 2012, null,null);
  dataNode rise = new dataNode(210, 315, 2, 0, "Rise of the Guardians", 2012, riseOrg,p74);
  dataNode croods = new dataNode(300, 300, 1, 0, "The Croods", 2013, null,p73);
  dataNode turbo = new dataNode(175, 270, 1, 0, "Turbo", 2013, null,p72);//WHYY THIS MOVIE snails??
  //peabody and sherman based off rocky and bullwinkle characters from 1960s america (minnesota)
  dataNode peabod = new dataNode(315, 280, 1, 2, "Mr. Peabody and Sherman", 2014, null,p71);
  dataNode dragon2 = new dataNode(695, 165, 1, 2, "How to Train Your Dragon 2", 2015, null,p70);
  dataNode penguins = new dataNode(670, 280, 1, 0, "Penguins of Madagascar", 2015, null,p69);
  //home is based on an american book (2007), takes place in florida
  dataNode home = new dataNode(305, 335, 1, 2, "Home", 2015, null,p68);
  dataNode toy3 = new dataNode(200, 295, 2, 0, "Toy Story 3", 2010, null,p67);
  dataNode cars2 = new dataNode(1140, 270, 2, 0, "Cars 2", 2011, null,p66);
  dataNode brave = new dataNode(600, 190, 2, 0, "Brave", 2012, null,p65);
  
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
  dataNode empOrg = new dataNode(670, 223, 0, 1, "The Emperor's New Groove", 2000, null,null);
  dataNode emp = new dataNode(345, 545, 0, 0, "The Emperor's New Groove", 2000, empOrg,p64);
  dataNode lilo = new dataNode(30, 373, 0, 0, "Lilo and Stitch", 2001, null,p63);
  //should we do dinosaur??
  //atlantis??
  dataNode treasOrg = new dataNode(600, 222, 0, 1, "Treasure Planet", 2002, null,null);
    dataNode treas = new dataNode(1190, 20, 0, 0, "Treasure Planet", 2002, treasOrg,p62);
  dataNode bear = new dataNode(38, 125, 0, 0, "Brother Bear", 2003, null,p61);
  dataNode range = new dataNode(180, 270, 0, 0, "Home on the Range", 2004, null,p60);
  //chicken little??
  dataNode robinson = new dataNode(235, 285, 0, 2, "Meet the Robinsons", 2007, null,p59);
  dataNode bolt = new dataNode(175, 300, 0, 0, "Bolt", 2008, null,p58);
  dataNode frogOrg = new dataNode(628, 233, 0, 1, "The Princess and the Frog", 2009, null,null);
  dataNode frog = new dataNode(265, 320, 0, 0, "The Princess and the Frog", 2009, frogOrg,p57);
  node2000s.add(empOrg);
  node2000s.add(emp);
  node2000s.add(lilo);
  node2000s.add(treasOrg);
  node2000s.add(treas);
  node2000s.add(bear);
  node2000s.add(range);
  
  //dreamworks
  dataNode doradoOrg = new dataNode(375, 450, 1, 1, "The Road to El Dorado", 2000, null,null);
  dataNode dorado = new dataNode(590, 285, 1, 0, "The Road to El Dorado", 2000, doradoOrg,p56);
  dataNode chickenRun = new dataNode(590, 200, 1, 0, "Chicken Run", 2000, null,p55);
  dataNode shrekOrg = new dataNode(640, 250, 1, 1, "Shrek", 2001, null,null);
  dataNode shrek = new dataNode(607, 220, 1, 0, "Shrek", 2001, shrekOrg,p54);
  dataNode spirit = new dataNode(195, 285, 1, 0, "Spirit: Stallion of the Cimarron", 2002, null,p53);
  dataNode sinbadOrg = new dataNode(765, 350, 1, 1, "Sinbad: Legend of the Seven Seas", 2003, null,null);
  dataNode sinbad = new dataNode(675, 300, 1, 0, "Sinbad: Legend of the Seven Seas", 2003, sinbadOrg,p52);
  dataNode shrek2Org = new dataNode(655, 242, 1, 1, "Shrek 2", 2004, null,null);
  dataNode shrek2 = new dataNode(609, 212, 1, 0, "Shrek 2", 2004, shrek2Org,p51);
  //shark tale??
  dataNode mad = new dataNode(795, 550, 1, 0, "Madagascar", 2005, null,p50);
  dataNode gromit = new dataNode(599, 200, 1, 0, "Wallace and Gromit: The Curse of the Were-Rabbit", 2005, null,p49);
  dataNode hedge = new dataNode(300, 290, 1, 0, "Over the Hedge", 2006, null,p48);
  dataNode flushed = new dataNode(602, 208, 1, 0, "Flushed Away", 2006, null,p47);
  dataNode shrek3Org = new dataNode(666, 238, 1, 1, "Shrek the Third", 2007, null,null);
  dataNode shrek3 = new dataNode(602, 190, 1, 0, "Shrek the Third", 2007, shrek3Org,p46);
  dataNode bee = new dataNode(280, 275, 1, 0, "Bee Movie", 2007, null,p45);
  dataNode panda = new dataNode(1010, 325, 1, 0, "Kung Fu Panda", 2008, null,p44);
  dataNode mad2 = new dataNode(670, 400, 1, 0, "Madagascar: Escape 2 Africa", 2008, null,p43);
  dataNode monsVSaliens = new dataNode(200, 265, 1, 0, "Monsters vs. Aliens", 2009, null,p42);
  
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
  node2000s.add(monsVSaliens);
    
  //pixar
  dataNode nemo = new dataNode(1025, 600, 2, 0, "Finding Nemo", 2003, null,p41);
  dataNode incred = new dataNode(330, 290, 2, 0, "The Incredibles", 2004, null,p40);
  dataNode cars = new dataNode(165, 280, 2, 0, "Cars", 2006, null,p39);
  dataNode rat = new dataNode(625, 245, 2, 0, "Ratatouille", 2007, null,p38);
  dataNode walle = new dataNode(330, 300, 2, 0, "Wall-E", 2008, null,p37);
  dataNode up = new dataNode(200, 300, 2, 0, "Up", 2009, null,p36);
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
  dataNode rescDown = new dataNode(1110, 600, 0, 0, "The Rescuers Down Under", 1990, null,p35);
  dataNode beauty = new dataNode(623, 245, 0, 2, "Beauty and the Beast", 1991, null,p34);
  dataNode aladdin = new dataNode(765, 360, 0, 2, "Aladdin", 1992, null,p33);
  dataNode lionOrg = new dataNode(600, 203, 0, 1, "The Lion King", 1994, null,null);
  dataNode lion = new dataNode(670, 400, 0, 0, "The Lion King", 1994, lionOrg,p32);
  dataNode pocah = new dataNode(300, 305, 0, 2, "Pocahontas", 1995, null,p31);
  dataNode hunch = new dataNode(633, 250, 0, 2, "The Hunchback of Notre Dame", 1996, null,p30);
  dataNode herc = new dataNode(695, 305, 0, 2, "Hercules", 1997, null,p29);
  dataNode mulan = new dataNode(1015, 345, 0, 2, "Mulan", 1998, null,p28);
  dataNode tarzan = new dataNode(695, 410, 0, 2, "Tarzan", 1999, null,p27);
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
  dataNode prince = new dataNode(715, 355, 1, 2, "The Prince of Egypt", 1998, null,p26);
  dataNode antz = new dataNode(285, 290, 1, 0, "Antz", 1998, null,p25);
  node1990s.add(prince);
  node1990s.add(antz);
  
  //pixar
  dataNode toy = new dataNode(200, 295, 2, 0, "Toy Story", 1995, null,p24);
  dataNode bug = new dataNode(200, 265, 2, 0, "A Bug's Life", 1998, null,p23);
  dataNode toy2 = new dataNode(190, 297, 2, 0, "Toy Story 2", 1999, null,p22);
  
  node1990s.add(toy);
  node1990s.add(bug);
  node1990s.add(toy2);
  
  return node1990s;  
}

ArrayList<dataNode> populate1980s(){
  ArrayList<dataNode> node1980s = new  ArrayList<dataNode>();
  //disney
  dataNode fox = new dataNode(307, 290, 0, 2, "The Fox and the Hound", 1981, null,p21);
  node1980s.add(fox);
  dataNode cauldron = new dataNode(605, 222, 0, 2, "The Black Cauldron", 1985, null,p20);
  node1980s.add(cauldron);
  dataNode mouse = new dataNode(610, 210, 0, 2, "The Great Mouse Detective", 1986, null,p19);
  node1980s.add(mouse);
  dataNode oliverOrigin = new dataNode(600, 195, 0, 1, "Oliver & Company", 1988, null,null);
  node1980s.add(oliverOrigin);
  dataNode oliver = new dataNode(320, 290, 0, 0, "Oliver & Company", 1988, oliverOrigin,p18);
  node1980s.add(oliver);
  dataNode mermaid = new dataNode(655, 200, 0, 2, "The Little Mermaid", 1989, null,p17);
  node1980s.add(mermaid);
  return node1980s; 
}

ArrayList<dataNode> populate1970s(){
   ArrayList<dataNode> node1970s = new ArrayList<dataNode>();
  dataNode cats = new dataNode(623, 245, 0, 2, "The Aristocats", 1970, null,p16);
  node1970s.add(cats);
  dataNode robin = new dataNode(605, 220, 0, 2, "Robin Hood", 1973, null,p15);
  node1970s.add(robin);
  dataNode winnie = new dataNode(605, 205, 0, 2, "The Many Adventures of Winnie the Pooh", 1977, null,p14);
  node1970s.add(winnie);
  dataNode rescuersOrg = new dataNode(595, 187, 0, 1, "The Rescuers", 1977, null,null);
  node1970s.add(rescuersOrg);
  dataNode rescuers = new dataNode(320, 296, 0, 0, "The Rescuers", 1977, rescuersOrg,p13);
  node1970s.add(rescuers);
  return node1970s;
}

ArrayList<dataNode> populate1960s(){
   ArrayList<dataNode> node1960s = new  ArrayList<dataNode>();
  dataNode dalma = new dataNode(605, 202, 0, 2, "One Hundred and One Dalmatians", 1961, null,p12);
  node1960s.add(dalma);
  dataNode sword = new dataNode(605, 218, 0, 2, "The Sword in the Stone", 1963, null,p11);
  node1960s.add(sword);
  dataNode jungle = new dataNode(895, 375, 0, 2, "The Jungle Book", 1967, null,p10);
  node1960s.add(jungle);
  return node1960s;
}

ArrayList<dataNode> populate1950s(){
   ArrayList<dataNode> node1950s = new  ArrayList<dataNode>();
  dataNode cind = new dataNode(640, 245, 0, 2, "Cinderella", 1950, null,p9);
  node1950s.add(cind);
  dataNode alice = new dataNode(605, 205, 0, 2, "Alice in Wonderland", 1951, null,p8);
  node1950s.add(alice);
  dataNode peter = new dataNode(605, 190, 0, 2, "Peter Pan", 1953, null,p7);
  node1950s.add(peter);
  //lady and tramp was a book!
  dataNode lady = new dataNode(270, 305, 0, 2, "Lady and the Tramp", 1955, null,p6);
  node1950s.add(lady);
  dataNode sleeping = new dataNode(620, 245, 0, 2, "Sleeping Beauty", 1959, null,p5);
  node1950s.add(sleeping);
  return node1950s;
}

ArrayList<dataNode> populate1940s(){
   ArrayList<dataNode> node1940s = new  ArrayList<dataNode>();
  //bambi was an austrian book, adapted to america
  dataNode bambiOrg = new dataNode(665, 245, 0, 1, "Bambi", 1942, null, null);
  node1940s.add(bambiOrg);
  dataNode bambi = new dataNode(300, 290, 0, 0, "Bambi", 1942, bambiOrg,p4);
  node1940s.add(bambi);
  dataNode dumbo = new dataNode(305, 315, 0, 2, "Dumbo", 1941, null,p3);
  node1940s.add(dumbo);
  dataNode pino = new dataNode(675, 285, 0, 2, "Pinocchio", 1940, null,p2);
  node1940s.add(pino);
  //war films? fantasia?
  return node1940s;
}

ArrayList<dataNode> populate1930s(){
   ArrayList<dataNode> node1930s = new  ArrayList<dataNode>();
  dataNode snow = new dataNode(635, 233, 0, 2, "Snow White and the Seven Dwarfs", 1937, null, p1);
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
}
