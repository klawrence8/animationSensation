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

dataNode[] populate2010s(){
//  table = loadTable("data.csv", "header");
  dataNode[] node2010s = new dataNode[40];
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
//populate nodes
  node2010s[0] = new dataNode(170,280,0,0, "Big Hero 6", 2014);
  node2010s[1] = new dataNode(1120,290,0,1, "Big Hero 6", 2014);
  node2010s[2] = new dataNode(650, 180, 0, 0, "Frozen", 2013);
node2010s[3] = new dataNode(655, 185, 0, 1, "Frozen", 2013);
  node2010s[4] = new dataNode(240, 275, 0, 0, "Wreck-It Ralph", 2012);
 node2010s[5] = new dataNode(235, 270, 0, 1, "Wreck-It Ralph", 2012);
  node2010s[6] = new dataNode(620, 230, 0, 0, "Tangled", 2010);
  node2010s[7] = new dataNode(615, 233, 0, 1, "Tangled", 2010);
  //how to train your dragon was a book so it does have an origin
  node2010s[8] = new dataNode(690, 150, 1, 0, "How to Train Your Dragon", 2010);
  node2010s[9] = new dataNode(680, 165, 1, 1, "How to Train Your Dragon", 2010);
  node2010s[10] = new dataNode(600, 200, 1, 0, "Shrek Forever After", 2010);
  node2010s[11] = new dataNode(633, 238, 1, 1, "Shrek Forever After", 2010);
  node2010s[12] = new dataNode(330, 290, 2, 0, "Megamind", 2010);
  node2010s[13] = new dataNode(325, 285, 2, 1, "Megamind", 2010);
  node2010s[14] = new dataNode(1010, 325, 1, 0, "Kung Fu Panda 2", 2011);
  node2010s[15] = new dataNode(1015, 320, 1, 1, "Kung Fu Panda 2", 2011);
  node2010s[16] = new dataNode(620, 230, 1, 0, "Puss in Boots", 2011);
  node2010s[17] = new dataNode(625, 235, 1, 1, "Puss in Boots", 2011);
  node2010s[18] = new dataNode(615, 245, 1, 0, "Madagascar 3", 2012);
  node2010s[19] = new dataNode(620, 250, 1, 1, "Madagascar 3", 2012);
  node2010s[20] = new dataNode(210, 315, 2, 0, "Rise of the Guardians", 2012);
  node2010s[21] = new dataNode(628, 210, 0, 1, "Rise of the Guardians", 2012);
  node2010s[22] = new dataNode(300, 300, 1, 0, "The Croods", 2013);
  node2010s[23] = new dataNode(305, 305, 1, 1, "The Croods", 2013);
  node2010s[24] = new dataNode(175, 270, 1, 0, "Turbo", 2013);
  node2010s[25] = new dataNode(175, 275, 1, 1, "Turbo", 2013);
  //peabody and sherman based off rocky and bullwinkle characters from 1960s america (minnesota)
  node2010s[26] = new dataNode(260, 290, 1, 1, "Mr. Peabody and Sherman", 2014);
  node2010s[27] = new dataNode(315, 287, 1, 0, "Mr. Peabody and Sherman", 2014);
  node2010s[28] = new dataNode(705, 170, 1, 0, "How to Train Your Dragon 2", 2015);
  node2010s[29] = new dataNode(695, 165, 1, 1, "How to Train Your Dragon 2", 2015);
  node2010s[30] = new dataNode(675, 285, 1, 0, "Penguins of Madagascar", 2015);
  node2010s[31] = new dataNode(675, 280, 1, 1, "Penguins of Madagascar", 2015);
  //home is based on an american book (2007), takes place in florida
  node2010s[32] = new dataNode(295, 330, 1, 0, "Home", 2015);
  node2010s[33] = new dataNode(300, 330, 1, 1, "Home", 2015);
  node2010s[34] = new dataNode(200, 295, 2, 0, "Toy Story 3", 2010);
  node2010s[35] = new dataNode(200, 280, 2, 1, "Toy Story 3", 2010);
  node2010s[36] = new dataNode(1140, 270, 2, 0, "Cars 2", 2011);
  node2010s[37] = new dataNode(1132, 265, 2, 1, "Cars 2", 2011);
  node2010s[38] = new dataNode(600, 190, 2, 0, "Brave", 2012);
  node2010s[39] = new dataNode(605, 195, 2, 1, "Brave", 2012);
 // node2010s[40] = new dataNode(400, 400, 2, 0, "Monster's University", 2013);
  //node2010s[41] = new dataNode(410, 419, 2, 1, "Monster's University", 2013);
  
  
  return node2010s;  
    //dataNode(int lon, int lat, int c, int t, String n, int y)  
}

dataNode[] populate2000s(){
  dataNode[] node2000s = new dataNode[40];
  node2000s[0] = new dataNode(340, 540, 0, 0, "The Emperor's New Groove", 2000);
  node2000s[1] = new dataNode(650, 200, 0, 1, "The Emperor's New Groove", 2000);
  node2000s[2] = new dataNode(30, 370, 0, 0, "Lilo and Stitch", 2001);
  //need second node for lilo and stich if it's an original?
  //should we do dinosaur??
  //atlantis??
  node2000s[3] = new dataNode(1500, 20, 0, 0, "Treasure Planet", 2002);
  node2000s[4] = new dataNode(600, 210, 0, 1, "Treasure Planet", 2002);
  node2000s[5] = new dataNode(38, 125, 0, 0, "Brother Bear", 2003);
  node2000s[6] = new dataNode(41, 120, 0, 1, "Brother Bear", 2003);
  node2000s[7] = new dataNode(180, 270, 0, 0, "Home on the Range", 2004);
  node2000s[8] = new dataNode(183, 275, 0, 1, "Home on the Range", 2004);
  //chicken little??
  node2000s[9] = new dataNode(238, 280, 0, 0, "Meet the Robinsons", 2007);
  node2000s[10] = new dataNode(235, 285, 0, 1, "Meet the Robinsons", 2007);
  node2000s[11] = new dataNode(175, 300, 0, 0, "Bolt", 2008);
  //bolt is original? same thing with lilo and stitch
  node2000s[12] = new dataNode(265, 320, 0, 0, "The Princess and the Frog", 2009);
  node2000s[13] = new dataNode(628, 233, 0, 1, "The Princess and the Frog", 2009);
  
  //dreamworks
  node2000s[14] = new dataNode(590, 285, 1, 0, "The Road to El Dorado", 2000);
  node2000s[15] = new dataNode(375, 450, 1, 1, "The Road to El Dorado", 2000);
  node2000s[16] = new dataNode(590, 200, 1, 0, "Chicken Run", 2000);
  node2000s[17] = new dataNode(605, 200, 1, 0, "Shrek", 2001);
  node2000s[18] = new dataNode(625, 229, 1, 1, "Shrek", 2001);
  node2000s[19] = new dataNode(185, 280, 1, 0, "Spirit: Stallion of the Cimarron", 2002);
  node2000s[20] = new dataNode(765, 350, 1, 1, "Sinbad: Legend of the Seven Seas", 2003);
  node2000s[21] = new dataNode(675, 300, 1, 0, "Sinbad: Legend of the Seven Seas", 2003);
  node2000s[22] = new dataNode(605, 190, 1, 0, "Shrek 2", 2004);
  node2000s[23] = new dataNode(620, 225, 1, 1, "Shrek 2", 2004);
  //shark tale??
  node2000s[24] = new dataNode(800, 550, 1, 0, "Madagascar", 2005);
  //origin?
  node2000s[25] = new dataNode(595, 200, 1, 0, "Wallace and Gromit: The Curse of the Were-Rabbit", 2005);
  //wallace and gromit origin??
  node2000s[26] = new dataNode(300, 290, 1, 0, "Over the Hedge", 2006);
  //over the hedge origin?
  node2000s[27] = new dataNode(600, 203, 1, 0, "Flushed Away", 2006);
  //flusehd away origin?
  node2000s[28] = new dataNode(600, 190, 1, 0, "Shrek the Third", 2007);
  node2000s[29] = new dataNode(633, 238, 1, 1, "Shrek the Third", 2007);
  node2000s[30] = new dataNode(280, 275, 1, 0, "Bee Movie", 2007);
  //bee movie origin?
  node2000s[31] = new dataNode(1010, 325, 1, 0, "Kung Fu Panda", 2008);
  //origin??
  node2000s[32] = new dataNode(670, 400, 1, 0, "Madagascar: Escape 2 Africa", 2008);
  node2000s[33] = new dataNode(200, 265, 1, 0, "Monsters vs. Aliens", 2009);
  //origin??
  
  //pixar
  node2000s[34] = new dataNode(1110, 600, 2, 0, "Finding Nemo", 2003);
  node2000s[35] = new dataNode(330, 290, 2, 0, "The Incredibles", 2004);
  node2000s[36] = new dataNode(175, 280, 2, 0, "Cars", 2006);
  node2000s[37] = new dataNode(610, 245, 2, 0, "Ratatouille", 2007);
  node2000s[38] = new dataNode(330, 300, 2, 0, "Wall-E", 2008);
  node2000s[39] = new dataNode(200, 300, 2, 0, "Up", 2009);
  //what is monsters inc?
  
  
  
  return node2000s;
}
// COMPANY
// 0 = disney
// 1 = dreamworks
// 2 = pixar

// TYPE
// 0 = character ethnicity
// 1 = story origin
// 2 = office
