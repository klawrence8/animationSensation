
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
  //node2010s[40] = new dataNode(400, 400, 2, 0, "Monster's University", 2013);
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

dataNode[] populate1990s(){
  dataNode[] node1990s = new dataNode[23];
  //disney
  node1990s[0] = new dataNode(1110, 600, 0, 0, "The Rescuers Down Under", 1990);
  node1990s[1] = new dataNode(623, 245, 0, 0, "Beauty and the Beast", 1991);
  node1990s[2] = new dataNode(628, 240, 0, 1, "Beauty and the Beast", 1991);
  node1990s[3] = new dataNode(770, 365, 0, 1, "Aladdin", 1992);
  node1990s[4] = new dataNode(765, 360, 0, 0, "Aladdin", 1992);
  node1990s[5] = new dataNode(600, 203, 0, 1, "The Lion King", 1994);
  node1990s[6] = new dataNode(670, 400, 0, 0, "The Lion King", 1994);
  node1990s[7] = new dataNode(305, 300, 0, 1, "Pocahontas", 1995);
  node1990s[8] = new dataNode(300, 305, 0, 0, "Pocahontas", 1995);
  node1990s[9] = new dataNode(630, 250, 0, 1, "The Hunchback of Notre Dame", 1996);
  node1990s[10] = new dataNode(630, 240, 0, 0, "The Hunchback of Notre Dame", 1996);
  node1990s[11] = new dataNode(690, 300, 1, 1, "Hercules", 1997);
  node1990s[12] = new dataNode(695, 305, 1, 0, "Hercules", 1997);
  node1990s[13] = new dataNode(1010, 340, 1, 1, "Mulan", 1998);
  node1990s[14] = new dataNode(1015, 345, 1, 0, "Mulan", 1998);
  node1990s[15] = new dataNode(680, 410, 0, 1, "Tarzan", 1999);
  node1990s[16] = new dataNode(675, 405, 0, 0, "Tarzan" , 1999);
  //not including fantasia 2000, which was 1999
  
  //dreamworks
  node1990s[17] = new dataNode(715, 355, 1, 1, "The Prince of Egypt", 1998);
  node1990s[18] = new dataNode(705, 350, 1, 0, "The Prince of Egypt", 1998);
  node1990s[19] = new dataNode(300, 290, 1, 0, "Antz", 1998);
  
  //pixar
  node1990s[20] = new dataNode(200, 295, 2, 0, "Toy Story", 1995);
  node1990s[21] = new dataNode(200, 265, 2, 0, "A Bug's Life", 1998);
  node1990s[22] = new dataNode(205, 297, 2, 0, "Toy Story 2", 1999);
  
  return node1990s;  
}

dataNode[] populate1980s(){
  dataNode[] node1980s = new dataNode[10];
  //disney
  node1980s[0] = new dataNode(307, 290, 0, 0, "The Fox and the Hound", 1981);
  node1980s[1] = new dataNode(300, 285, 0, 1, "The Fox and the Hound", 1981);
  node1980s[2] = new dataNode(605, 200, 0, 0, "The Black Cauldron", 1985);
  node1980s[3] = new dataNode(600, 195, 0, 1, "The Black Cauldron", 1985);
  node1980s[4] = new dataNode(605, 192, 0, 0, "The Great Mouse Detective", 1986);
  node1980s[5] = new dataNode(600, 202, 0, 1, "The Great Mouse Detective", 1986);
  node1980s[6] = new dataNode(330, 290, 0, 0, "Oliver & Company", 1988);
  node1980s[7] = new dataNode(600, 188, 0, 1, "Oliver & Company", 1988);
  node1980s[8] = new dataNode(655, 200, 0, 0, "The Little Mermaid", 1989);
  node1980s[9] = new dataNode(650, 195, 0, 1, "The Little Mermaid", 1989);
  return node1980s;
}

dataNode[] populate1970s(){
  dataNode[] node1970s = new dataNode[8];
  node1970s[0] = new dataNode(623, 245, 0, 0, "The Aristocats", 1970);
  node1970s[1] = new dataNode(628, 240, 0, 1, "The Aristocats", 1970);
  node1970s[2] = new dataNode(605, 203, 0, 0, "Robin Hood", 1973);
  node1970s[3] = new dataNode(600, 200, 0, 1, "Robin Hood", 1973);
  node1970s[4] = new dataNode(605, 190, 0, 0, "The Many Adventures of Winnie the Pooh", 1977);
  node1970s[5] = new dataNode(600, 186, 0, 1, "The Many Adventures of Winnie the Pooh", 1977);
  node1970s[6] = new dataNode(595, 187, 0, 1, "The Rescuers", 1977);
  node1970s[7] = new dataNode(330, 296, 0, 0, "The Rescuers", 1977);
  return node1970s;
}

dataNode[] populate1960s(){
  dataNode[] node1960s = new dataNode[6];
  node1960s[0] = new dataNode(605, 200, 0, 0, "One Hundred and One Dalmatians", 1961);
  node1960s[1] = new dataNode(600, 205, 0, 1, "One Hundred and One Dalmatians", 1961);
  node1960s[2] = new dataNode(605, 205, 0, 0, "The Sword in the Stone", 1963);
  node1960s[3] = new dataNode(600, 195, 0, 1, "The Sword in the Stone", 1963);
  node1960s[4] = new dataNode(895, 375, 0, 0, "The Jungle Book", 1967);
  node1960s[5] = new dataNode(900, 375, 0, 1, "The Jungle Book", 1967);
  return node1960s;
}

dataNode[] populate1950s(){
  dataNode[] node1950s = new dataNode[10];
  node1950s[0] = new dataNode(635, 233, 0, 1, "Cinderella", 1950);
  node1950s[1] = new dataNode(633, 245, 0, 0, "Cinderella", 1950);
  node1950s[2] = new dataNode(605, 195, 0, 0, "Alice in Wonderland", 1951);
  node1950s[3] = new dataNode(600, 200, 0, 1, "Alice in Wonderland", 1951);
  node1950s[4] = new dataNode(600, 190, 0, 1, "Peter Pan", 1953);
  node1950s[5] = new dataNode(605, 200, 0, 0, "Peter Pan", 1953);
  //lady and tramp was a book!
  node1950s[6] = new dataNode(280, 300, 0, 1, "Lady and the Tramp", 1955);
  node1950s[7] = new dataNode(270, 305, 0, 0, "Lady and the Tramp", 1955);
  node1950s[8] = new dataNode(625, 240, 0, 1, "Sleeping Beauty", 1959);
  node1950s[9] = new dataNode(620, 245, 0, 0, "Sleeping Beauty", 1959);
  return node1950s;
}

dataNode[] populate1940s(){
  dataNode[] node1940s = new dataNode[6];
  //bambi was an austrian book, adapted to america
  node1940s[0] = new dataNode(640, 200, 0, 1, "Bambi", 1942);
  node1940s[1] = new dataNode(300, 290, 0, 0, "Bambi", 1942);
  node1940s[2] = new dataNode(300, 310, 0, 1, "Dumbo", 1941);
  node1940s[3] = new dataNode(305, 315, 0, 0, "Dumbo", 1941);
  node1940s[4] = new dataNode(680, 280, 0, 1, "Pinocchio", 1940);
  node1940s[5] = new dataNode(680, 275, 0, 0, "Pinocchio", 1940);
  //war films? fantasia?
  return node1940s;
}

dataNode[] populate1930s(){
  dataNode[] node1930s = new dataNode[2];
  node1930s[0] = new dataNode(635, 233, 0, 1, "Snow White and the Seven Dwarfs", 1937);
  node1930s[1] = new dataNode(630, 240, 0, 0, "Snow White and the Seven Dwarfs", 1937);
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
