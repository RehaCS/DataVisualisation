import org.gicentre.geomap.*;    // Needed for loading and displaying vector map.
import org.gicentre.utils.move.*; //Needed for ZoomPan

GeoMap geoMap;
PFont headingFont;
Table crimeSummary;
Table kingstonUponThames;
Table croydon;
Table bromley;
Table hounslow;
Table ealing;
Table havering;
Table hillingdon;
Table harrow;
Table brent;


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
  } else if (pageNum == 7) {
    id7();
  } else if (pageNum == 8) {
    id8();
  } else if (pageNum == 9) {
    id9();
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
  }
}

void keyPressed() {
  if (key == 'b' || key == 'B') {
    pageNum = 0;
  }
}