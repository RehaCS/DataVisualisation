import org.gicentre.geomap.*;    // Needed for loading and displaying vector map.

// Simple interactive query of a world map using the geomap library
// Jo Wood, 25th February, 2014.
 
GeoMap geoMap;
PFont headingFont;

void setup(){
  size(800, 600);
 
  //read geoMap Data
  geoMap = new GeoMap(10,100, width-20, height - 110,this); //(x,y,w,h)
  geoMap.readFile("LondonBorough");
  geoMap.writeAttributesAsTable(34); //Displays 34 rows of attributes in the table
  
  //text properties
  headingFont = createFont("Arial-BoldMT",28);
  textAlign(CENTER);

}

void draw(){
  background(202, 226, 245);  // Ocean colour
  stroke(0,40);               // Boundary colour
  //fill(206,173,146);          // Land colour
  fill(229,187,155);
  geoMap.draw();              // Draw the entire map.
 
  // Query the country at the mouse position.
  int id = geoMap.getID(mouseX, mouseY);
  if (id != -1)
  {
    //fill(180, 120, 120);
    fill(237,131,50);
    geoMap.draw(id);
   
    
    String name = geoMap.getAttributeTable().findRow(str(id),0).getString("NAME");
    fill(0);
    textSize(13);
    text(name, mouseX, mouseY-20);
    text("Count:", mouseX, mouseY-5);
  }
  
  fill(0);
  textFont(headingFont);
  text("Crime summary of London Boroughs", width/2, 70);

}

void onClick(){
}