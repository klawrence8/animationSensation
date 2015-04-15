
class dataNode {
  int longitude, lattitude;
  int company;
  int type;
  String name;
  int year;
  dataNode origin;
  
  dataNode(int lon, int lat, int c, int t, String n, int y, dataNode o) {
    longitude = lon;
    lattitude = lat;
    company = c;
    type = t;
    name = n;
    year = y;
    origin = o;
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

  dataNode bh6Org = new dataNode(1130,290,0, 1, "Big Hero 6", 2014, null);
  dataNode bh6 = new dataNode(170,280, 0, 0, "Big Hero 6", 2014, bh6Org);
  dataNode frozen = new dataNode(655, 185, 0, 2, "Frozen", 2013, null);
  dataNode wreckit = new dataNode(235, 270, 0, 2, "Wreck-It Ralph", 2012, null);
  dataNode tangled = new dataNode(658, 225, 0, 2, "Tangled", 2010, null);
  //how to train your dragon was a book so it does have an origin
  dataNode dragon = new dataNode(680, 165, 1, 2, "How to Train Your Dragon", 2010, null);
  dataNode shrek4Org = new dataNode(660, 245, 1, 1, "Shrek Forever After", 2010, null);
  dataNode shrek4 = new dataNode(600, 200, 1, 0, "Shrek Forever After", 2010, shrek4Org);
  dataNode mega = new dataNode(327, 290, 2, 0, "Megamind", 2010, null);
  dataNode panda2 = new dataNode(1010, 325, 1, 0, "Kung Fu Panda 2", 2011, null);
  dataNode puss = new dataNode(645, 245, 1, 2, "Puss in Boots", 2011, null);
  dataNode mad3 = new dataNode(615, 245, 1, 0, "Madagascar 3", 2012, null);
  dataNode riseOrg = new dataNode(670, 225, 0, 1, "Rise of the Guardians", 2012, null);
  dataNode rise = new dataNode(210, 315, 2, 0, "Rise of the Guardians", 2012, riseOrg);
  dataNode croods = new dataNode(300, 300, 1, 0, "The Croods", 2013, null);
  dataNode turbo = new dataNode(175, 270, 1, 0, "Turbo", 2013, null);
  //peabody and sherman based off rocky and bullwinkle characters from 1960s america (minnesota)
  dataNode peabod = new dataNode(315, 280, 1, 2, "Mr. Peabody and Sherman", 2014, null);
  dataNode dragon2 = new dataNode(695, 165, 1, 2, "How to Train Your Dragon 2", 2015, null);
  dataNode penguins = new dataNode(670, 280, 1, 0, "Penguins of Madagascar", 2015, null);
  //home is based on an american book (2007), takes place in florida
  dataNode home = new dataNode(305, 335, 1, 2, "Home", 2015, null);
  dataNode toy3 = new dataNode(200, 295, 2, 0, "Toy Story 3", 2010, null);
  dataNode cars2 = new dataNode(1140, 270, 2, 0, "Cars 2", 2011, null);
  dataNode brave = new dataNode(600, 190, 2, 0, "Brave", 2012, null);
  
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
  dataNode empOrg = new dataNode(670, 223, 0, 1, "The Emperor's New Groove", 2000, null);
  dataNode emp = new dataNode(345, 545, 0, 0, "The Emperor's New Groove", 2000, empOrg);
  dataNode lilo = new dataNode(30, 373, 0, 0, "Lilo and Stitch", 2001, null);
  //should we do dinosaur??
  //atlantis??
  dataNode treasOrg = new dataNode(600, 222, 0, 1, "Treasure Planet", 2002, null);
    dataNode treas = new dataNode(1190, 20, 0, 0, "Treasure Planet", 2002, treasOrg);
  dataNode bear = new dataNode(38, 125, 0, 0, "Brother Bear", 2003, null);
  dataNode range = new dataNode(180, 270, 0, 0, "Home on the Range", 2004, null);
  //chicken little??
  dataNode robinson = new dataNode(235, 285, 0, 2, "Meet the Robinsons", 2007, null);
  dataNode bolt = new dataNode(175, 300, 0, 0, "Bolt", 2008, null);
  dataNode frogOrg = new dataNode(628, 233, 0, 1, "The Princess and the Frog", 2009, null);
  dataNode frog = new dataNode(265, 320, 0, 0, "The Princess and the Frog", 2009, frogOrg);
  node2000s.add(empOrg);
  node2000s.add(emp);
  node2000s.add(lilo);
  node2000s.add(treasOrg);
  node2000s.add(treas);
  node2000s.add(bear);
  node2000s.add(range);
  
  //dreamworks
  dataNode doradoOrg = new dataNode(375, 450, 1, 1, "The Road to El Dorado", 2000, null);
  dataNode dorado = new dataNode(590, 285, 1, 0, "The Road to El Dorado", 2000, doradoOrg);
  dataNode chickenRun = new dataNode(590, 200, 1, 0, "Chicken Run", 2000, null);
  dataNode shrekOrg = new dataNode(640, 250, 1, 1, "Shrek", 2001, null);
  dataNode shrek = new dataNode(607, 220, 1, 0, "Shrek", 2001, shrekOrg);
  dataNode spirit = new dataNode(195, 285, 1, 0, "Spirit: Stallion of the Cimarron", 2002, null);
  dataNode sinbadOrg = new dataNode(765, 350, 1, 1, "Sinbad: Legend of the Seven Seas", 2003, null);
  dataNode sinbad = new dataNode(675, 300, 1, 0, "Sinbad: Legend of the Seven Seas", 2003, sinbadOrg);
  dataNode shrek2Org = new dataNode(655, 242, 1, 1, "Shrek 2", 2004, null);
  dataNode shrek2 = new dataNode(609, 212, 1, 0, "Shrek 2", 2004, shrek2Org);
  //shark tale??
  dataNode mad = new dataNode(795, 550, 1, 0, "Madagascar", 2005, null);
  dataNode gromit = new dataNode(599, 200, 1, 0, "Wallace and Gromit: The Curse of the Were-Rabbit", 2005, null);
  dataNode hedge = new dataNode(300, 290, 1, 0, "Over the Hedge", 2006, null);
  dataNode flushed = new dataNode(602, 208, 1, 0, "Flushed Away", 2006, null);
  dataNode shrek3Org = new dataNode(666, 238, 1, 1, "Shrek the Third", 2007, null);
  dataNode shrek3 = new dataNode(602, 190, 1, 0, "Shrek the Third", 2007, shrek3Org);
  dataNode bee = new dataNode(280, 275, 1, 0, "Bee Movie", 2007, null);
  dataNode panda = new dataNode(1010, 325, 1, 0, "Kung Fu Panda", 2008, null);
  dataNode mad2 = new dataNode(670, 400, 1, 0, "Madagascar: Escape 2 Africa", 2008, null);
  dataNode monsVSaliens = new dataNode(200, 265, 1, 0, "Monsters vs. Aliens", 2009, null);
  
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
  dataNode nemo = new dataNode(1025, 600, 2, 0, "Finding Nemo", 2003, null);
  dataNode incred = new dataNode(330, 290, 2, 0, "The Incredibles", 2004, null);
  dataNode cars = new dataNode(165, 280, 2, 0, "Cars", 2006, null);
  dataNode rat = new dataNode(625, 245, 2, 0, "Ratatouille", 2007, null);
  dataNode walle = new dataNode(330, 300, 2, 0, "Wall-E", 2008, null);
  dataNode up = new dataNode(200, 300, 2, 0, "Up", 2009, null);
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
  dataNode rescDown = new dataNode(1110, 600, 0, 0, "The Rescuers Down Under", 1990, null);
  dataNode beauty = new dataNode(623, 245, 0, 2, "Beauty and the Beast", 1991, null);
  dataNode aladdin = new dataNode(765, 360, 0, 2, "Aladdin", 1992, null);
  dataNode lionOrg = new dataNode(600, 203, 0, 1, "The Lion King", 1994, null);
  dataNode lion = new dataNode(670, 400, 0, 0, "The Lion King", 1994, lionOrg);
  dataNode pocah = new dataNode(300, 305, 0, 2, "Pocahontas", 1995, null);
  dataNode hunch = new dataNode(633, 250, 0, 2, "The Hunchback of Notre Dame", 1996, null);
  dataNode herc = new dataNode(695, 305, 0, 2, "Hercules", 1997, null);
  dataNode mulan = new dataNode(1015, 345, 0, 2, "Mulan", 1998, null);
  dataNode tarzan = new dataNode(695, 410, 0, 2, "Tarzan", 1999, null);
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
  dataNode prince = new dataNode(715, 355, 1, 2, "The Prince of Egypt", 1998, null);
  dataNode antz = new dataNode(285, 290, 1, 0, "Antz", 1998, null);
  node1990s.add(prince);
  node1990s.add(antz);
  
  //pixar
  dataNode toy = new dataNode(200, 295, 2, 0, "Toy Story", 1995, null);
  dataNode bug = new dataNode(200, 265, 2, 0, "A Bug's Life", 1998, null);
  dataNode toy2 = new dataNode(190, 297, 2, 0, "Toy Story 2", 1999, null);
  
  node1990s.add(toy);
  node1990s.add(bug);
  node1990s.add(toy2);
  
  return node1990s;  
}

ArrayList<dataNode> populate1980s(){
  ArrayList<dataNode> node1980s = new  ArrayList<dataNode>();
  //disney
  dataNode fox = new dataNode(307, 290, 0, 2, "The Fox and the Hound", 1981, null);
  node1980s.add(fox);
  dataNode cauldron = new dataNode(605, 222, 0, 2, "The Black Cauldron", 1985, null);
  node1980s.add(cauldron);
  dataNode mouse = new dataNode(610, 210, 0, 2, "The Great Mouse Detective", 1986, null);
  node1980s.add(mouse);
  dataNode oliverOrigin = new dataNode(600, 195, 0, 1, "Oliver & Company", 1988, null);
  node1980s.add(oliverOrigin);
  dataNode oliver = new dataNode(320, 290, 0, 0, "Oliver & Company", 1988, oliverOrigin);
  node1980s.add(oliver);
  dataNode mermaid = new dataNode(655, 200, 0, 2, "The Little Mermaid", 1989, null);
  node1980s.add(mermaid);
  return node1980s; 
}

ArrayList<dataNode> populate1970s(){
   ArrayList<dataNode> node1970s = new ArrayList<dataNode>();
  dataNode cats = new dataNode(623, 245, 0, 2, "The Aristocats", 1970, null);
  node1970s.add(cats);
  dataNode robin = new dataNode(605, 220, 0, 2, "Robin Hood", 1973, null);
  node1970s.add(robin);
  dataNode winnie = new dataNode(605, 205, 0, 2, "The Many Adventures of Winnie the Pooh", 1977, null);
  node1970s.add(winnie);
  dataNode rescuersOrg = new dataNode(595, 187, 0, 1, "The Rescuers", 1977, null);
  node1970s.add(rescuersOrg);
  dataNode rescuers = new dataNode(320, 296, 0, 0, "The Rescuers", 1977, rescuersOrg);
  node1970s.add(rescuers);
  return node1970s;
}

ArrayList<dataNode> populate1960s(){
   ArrayList<dataNode> node1960s = new  ArrayList<dataNode>();
  dataNode dalma = new dataNode(605, 202, 0, 2, "One Hundred and One Dalmatians", 1961, null);
  node1960s.add(dalma);
  dataNode sword = new dataNode(605, 218, 0, 2, "The Sword in the Stone", 1963, null);
  node1960s.add(sword);
  dataNode jungle = new dataNode(895, 375, 0, 2, "The Jungle Book", 1967, null);
  node1960s.add(jungle);
  return node1960s;
}

ArrayList<dataNode> populate1950s(){
   ArrayList<dataNode> node1950s = new  ArrayList<dataNode>();
  dataNode cind = new dataNode(640, 245, 0, 2, "Cinderella", 1950, null);
  node1950s.add(cind);
  dataNode alice = new dataNode(605, 205, 0, 2, "Alice in Wonderland", 1951, null);
  node1950s.add(alice);
  dataNode peter = new dataNode(605, 190, 0, 2, "Peter Pan", 1953, null);
  node1950s.add(peter);
  //lady and tramp was a book!
  dataNode lady = new dataNode(270, 305, 0, 2, "Lady and the Tramp", 1955, null);
  node1950s.add(lady);
  dataNode sleeping = new dataNode(620, 245, 0, 2, "Sleeping Beauty", 1959, null);
  node1950s.add(sleeping);
  return node1950s;
}

ArrayList<dataNode> populate1940s(){
   ArrayList<dataNode> node1940s = new  ArrayList<dataNode>();
  //bambi was an austrian book, adapted to america
  dataNode bambiOrg = new dataNode(665, 245, 0, 1, "Bambi", 1942, null);
  node1940s.add(bambiOrg);
  dataNode bambi = new dataNode(300, 290, 0, 0, "Bambi", 1942, bambiOrg);
  node1940s.add(bambi);
  dataNode dumbo = new dataNode(305, 315, 0, 2, "Dumbo", 1941, null);
  node1940s.add(dumbo);
  dataNode pino = new dataNode(675, 285, 0, 2, "Pinocchio", 1940, null);
  node1940s.add(pino);
  //war films? fantasia?
  return node1940s;
}

ArrayList<dataNode> populate1930s(){
   ArrayList<dataNode> node1930s = new  ArrayList<dataNode>();
  dataNode snow = new dataNode(635, 233, 0, 2, "Snow White and the Seven Dwarfs", 1937, null);
  node1930s.add(snow);
 // node1930s.add(new dataNode(630, 240, 0, 0, "Snow White and the Seven Dwarfs", 1937, 
   // node1930s.get(0));
  return node1930s;
}
  

// COMPANY
// 0 = disney
// 1 = dreamworks
// 2 = pixar

// TYPE
// 0 = character ethnicity
// 1 = story origin
// 2 = office
