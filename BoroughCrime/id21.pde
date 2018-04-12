void id21(){
  
  background(255);
  for (int row = 0; row < 9; row++) {
    float crimeCount = merton.getFloat(row, "crimeCount");
    int cID = merton.getInt(row, "cid");
    String majCat = merton.getString(row, "majorCategory");
    float rectLength = map(crimeCount, minData, maxData, 100, 350);

    if (cID == 1) {
      fill(174, 156, 237, 100);
    } else if (cID == 2) {
      fill(237, 156, 162, 100);
    } else if (cID == 3) {
      fill(237, 156, 246, 100);
    } else if (cID == 4) {
      fill(156, 202, 237, 100);
    } else if (cID == 5) {
      fill(156, 237, 255, 100);
    } else if (cID == 6) {
      fill(156, 237, 183, 100);
    } else if (cID == 7) {
      fill(201, 237, 156, 100);
    } else if (cID == 8) {
      fill(237, 224, 156, 100);
    } else if (cID == 9) {
      fill(237, 192, 156, 100);
    }

    rect(width/2-100, 75 + row * 50, rectLength, 20);
    fill(0);
    textAlign(RIGHT);
    textSize(13);
    text(majCat, width/2 -110, 87+row*50);
    int count = (int) crimeCount;
    textAlign(LEFT);
    text(count, width/2 - 95, 90+row*50);
  }
  
  textAlign(CENTER);
  text("Press 'b' to go back!", width/2, height-50);
  textSize(24);
  fill(0);
  text("Merton", width/2,50);
  }