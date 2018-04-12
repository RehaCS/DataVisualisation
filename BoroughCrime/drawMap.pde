void drawMap() {

  background(202, 226, 245);  // Ocean colour
  stroke(0, 40);               // Boundary colour
  fill(229, 187, 155);          // Land colour

  geoMap.draw();              // Draw the entire map.

  //Heading
  fill(0);
  textFont(headingFont);
  textAlign(CENTER);
  text("Crime summary of London Boroughs", width/2, 70);

  // Query the country at the mouse position.
  int id = geoMap.getID(mouseX, mouseY);

  if (id != -1) {
    fill(237, 131, 50);
    geoMap.draw(id);

    String name = geoMap.getAttributeTable().findRow(str(id), 0).getString("NAME");
    fill(0);
    textSize(13);
    text(name, mouseX, mouseY-20);
    textSize(10);

    //goes through the rows in the table, compares ids and shows crime count
    for (int row=0; row<crimeSummary.getRowCount(); row++) {
      int crimeCount = crimeSummary.getInt(row, "crimeCount"); 
      int csID = crimeSummary.getInt(row, "id");
      if (id == csID) {
        text("Crime Count:" + crimeCount, mouseX, mouseY-5);
      }
    }
  }
}