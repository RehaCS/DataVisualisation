import org.gicentre.geomap.*;    // Needed for loading and displaying vector map.
import org.gicentre.utils.move.*; //Needed for ZoomPan

GeoMap geoMap;
PFont headingFont;
Table crimeSummary, kingstonUponThames, croydon, bromley,hounslow, ealing, 
havering, hillingdon, harrow, brent, barnet , lambeth, southwark, lewisham, greenwich, 
bexley, enfield, waltham, redbridge, sutton, richmondUponThames, merton, wandsworth, 
hammersmith, kensington, westminster, camden, towerHamlets, islington, hackney, haringey, newham, barking;


int pageNum;

float minData = MAX_FLOAT;
float maxData = MIN_FLOAT;

void setup() {
  size(800, 600);

  //read geoMap Data
  geoMap = new GeoMap(10, 100, width-20, height - 110, this); //(x,y,w,h)
  geoMap.readFile("LondonBorough");
  geoMap.writeAttributesAsTable(34); //Displays 34 rows of attributes in the table

  //Load Table
  crimeSummary = loadTable("CrimeCount2017.csv", "header,csv");
  kingstonUponThames = loadTable("KingstonUponThames.csv", "header, csv");
  croydon = loadTable("Croydon.csv", "header, csv");
  bromley = loadTable("Bromley.csv", "header, csv");
  hounslow = loadTable("Hounslow.csv", "header, csv");
  ealing = loadTable("Ealing.csv", "header, csv");
  havering = loadTable("Havering.csv", "header, csv");
  hillingdon = loadTable("Hillingdon.csv", "header, csv");
  harrow = loadTable("Harrow.csv", "header,csv");
  brent = loadTable("Brent.csv", "header,csv");
  barnet = loadTable("Barnet.csv", "header,csv");
  lambeth = loadTable("Lambeth.csv", "header,csv");
  southwark = loadTable("Southwark.csv", "header,csv");
  lewisham = loadTable("Lewisham.csv", "header,csv");
  greenwich = loadTable("Greenwich.csv", "header,csv");
  bexley = loadTable("Bexley.csv", "header,csv");
  enfield = loadTable("Enfield.csv", "header,csv");
  waltham = loadTable("Waltham.csv", "header,csv");
  redbridge = loadTable("Redbridge.csv", "header,csv");
  sutton = loadTable("Sutton.csv", "header,csv");
  richmondUponThames = loadTable("RichmondUponThames.csv", "header,csv");
  merton = loadTable("Merton.csv", "header,csv");
  wandsworth = loadTable("Wandsworth.csv", "header,csv");
  hammersmith = loadTable("Hammersmith.csv", "header,csv");
  kensington = loadTable("Kensington.csv", "header,csv");
  westminster = loadTable("Westminster.csv", "header,csv");
  camden = loadTable("Camden.csv", "header,csv");
  towerHamlets = loadTable("TowerHamlets.csv", "header,csv");
  islington = loadTable("Islington.csv", "header,csv");
  hackney = loadTable("Hackney.csv", "header,csv");
  haringey = loadTable("Haringey.csv", "header,csv");
  newham = loadTable("Newham.csv", "header,csv");
  barking = loadTable("Barking.csv", "header,csv");

  
  //text properties
  headingFont = createFont("crol-BoldMT", 28);
  textAlign(CENTER);

  pageNum = 0;

  for (int row = 0; row < kingstonUponThames.getRowCount(); row++) {
    minData = min(minData, kingstonUponThames.getFloat(row, "crimeCount"));
    maxData = max(maxData, kingstonUponThames.getFloat(row, "crimeCount"));
  }
}

void draw() {
  drawMap(); 

  if (pageNum == 0) {
    drawMap();
  } else if (pageNum == 1) {
    id1();
  } else if (pageNum == 2) {
    id2();
  } else if (pageNum == 3) {
    id3();
  } else if (pageNum == 4) {
    id4();
  } else if (pageNum == 5) {
    id5();
  } else if (pageNum == 6) {
    id6();
  } else if (pageNum == 7) {
    id7();
  } else if (pageNum == 8) {
    id8();
  } else if (pageNum == 9) {
    id9();
  } else if (pageNum == 10) {
    id10();
  } else if (pageNum == 11) {
    id11();
  } else if (pageNum == 12) {
    id12();
  } else if (pageNum == 13) {
    id13();
  } else if (pageNum == 14) {
    id14();
  } else if (pageNum == 15) {
    id15();
  } else if (pageNum == 16) {
    id16();
  } else if (pageNum == 17) {
    id17();
  } else if (pageNum == 18) {
    id18();
  } else if (pageNum == 19) {
    id19();
  } else if (pageNum == 20) {
    id20();
  } else if (pageNum == 21) {
    id21();
  } else if (pageNum == 22) {
    id22();
  } else if (pageNum == 23) {
    id23();
  } else if (pageNum == 24) {
    id24();
  } else if (pageNum == 25) {
    id25();
  } else if (pageNum == 26) {
    id26();
  } else if (pageNum == 27) {
    id27();
  } else if (pageNum == 28) {
    id28();
  } else if (pageNum == 29) {
    id29();
  } else if (pageNum == 30) {
    id30();
  } else if (pageNum == 31) {
    id31();
  } else if (pageNum == 32) {
    id32();
  } else if (pageNum == 33) {
    id33();
  }
}

void mouseClicked() {
  int id = geoMap.getID(mouseX, mouseY);
  if (id == 1) {
    pageNum = 1;
  } else if (id == 2) {
    pageNum = 2;
  } else if (id == 3) {
    pageNum = 3;
  } else if (id == 4) {
    pageNum = 4;
  } else if (id == 5) {
    pageNum = 5;
  } else if (id == 6) {
    pageNum = 6;
  } else if (id == 7) {
    pageNum = 7;
  } else if (id == 8) {
    pageNum = 8;
  } else if (id == 9) {
    pageNum = 9;
  } else if (id == 10) {
    pageNum = 10;
  } else if (id == 11) {
    pageNum = 11;
  } else if (id == 12) {
    pageNum = 12;
  } else if (id == 13) {
    pageNum = 13;
  } else if (id == 14) {
    pageNum = 14;
  } else if (id == 15) {
    pageNum = 15;
  } else if (id == 16) {
    pageNum = 16;
  } else if (id == 17) {
    pageNum = 17;
  } else if (id == 18) {
    pageNum = 18;
  } else if (id == 19) {
    pageNum = 19;
  } else if (id == 20) {
    pageNum = 20;
  } else if (id == 21) {
    pageNum = 21;
  } else if (id == 22) {
    pageNum = 22;
  } else if (id == 23) {
    pageNum = 23;
  } else if (id == 24) {
    pageNum = 24;
  } else if (id == 25) {
    pageNum = 25;
  } else if (id == 26) {
    pageNum = 26;
  } else if (id == 27) {
    pageNum = 27;
  } else if (id == 28) {
    pageNum = 28;
  } else if (id == 29) {
    pageNum = 29;
  } else if (id == 30) {
    pageNum = 30;
  } else if (id == 31) {
    pageNum = 31;
  } else if (id == 32) {
    pageNum = 32;
  } else if (id == 33) {
    pageNum = 33;
  }
}

void keyPressed() {
  if (key == 'b' || key == 'B') {
    pageNum = 0;
  }
}