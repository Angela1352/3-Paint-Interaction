// Angela Chen
// 2-3
// Mar 7, 2022



//Pallette -----------------------------------
color red      = #FF4646;
color orange   = #FFBE46;
color yellow   = #F8F087;
color green    = #B7E3C0;
color blue     = #B8D0DD;
color purple   = #DBBAEF;
color pink     = #F39DD4;
color white    = #FFFFFF;
color black    = #000000;



//variables ----------------------------------
color selectedColor;
float sliderX, slider2X;
float shade, thickness;

PImage smile;


void setup () { //----------------------------
  size(800, 600);
  background(255);
  strokeWeight(5);
  stroke(selectedColor);
  selectedColor = 0;

  sliderX = 180;
  shade = 127;

  slider2X = 500;
  thickness = 2;

  smile = loadImage("smile.jpg");
}



void draw () { //-----------------------------
  strokeWeight(thickness);
  toolbar();
  colorButtons();
  shadeButtons();
  thickness();
  rectangleButtons();
  indicator();

  background(100);
  image(smile, 100, 100, 100, 100);
}



void tactile (int x, int y, int r) { //-------
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(white);
  } else {
    stroke(black);
  }
}



void tactile2 (int x, int y, int r) { //-------
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(black);
  } else {
    stroke(white);
  }
}



void controlSlider () { //----------------------
  if (mouseX > 80 && mouseX < 280 && mouseY > 545 && mouseY < 575) {
    sliderX = mouseX;
  }
}



void controlSlider2 () { //----------------------
  if (mouseX > 390 && mouseX < 600 && mouseY > 545 && mouseY < 575) {
    slider2X = mouseX;
  }
}



void saveImage(File f) {
  if (f != null) {
    PImage canvas = get(0, 0, width, height-130);
    canvas.save(f.getAbsolutePath());
  }
}


void toolbar () { //---------------------------
  fill(50);
  stroke(50);
  strokeWeight(20);
  rect(0, 480, 800, 120);
}



void colorButtons () { //----------------------
  strokeWeight(2);

  tactile(30, 505, 20);
  fill(red);
  circle(30, 505, 40);

  tactile(80, 505, 20);
  fill(orange);
  circle(80, 505, 40);

  tactile(130, 505, 20);
  fill(yellow);
  circle(130, 505, 40);

  tactile(180, 505, 20);
  fill(green);
  circle(180, 505, 40);

  tactile(230, 505, 20);
  fill(blue);
  circle(230, 505, 40);

  tactile(280, 505, 20);
  fill(purple);
  circle(280, 505, 40);

  tactile(330, 505, 20);
  fill(pink);
  circle(330, 505, 40);
}



void shadeButtons () { //----------------------
  tactile(30, 560, 20);
  fill(white);
  circle(30, 560, 40);
  stroke(255);
  tactile2(330, 560, 20);
  fill(black);
  circle (330, 560, 40);

  //SLIDER
  stroke(shade);
  strokeWeight(6);
  fill(shade);
  shade = map(sliderX, 80, 280, 255, 0);
  line(80, 560, 280, 560);
  stroke(0);
  strokeWeight(3);
  circle(sliderX, 560, 30);
}



void rectangleButtons () {
  stroke(0);
  strokeWeight(2);
  fill(150);
  rect(695, 490, 65, 35);
  rect(695, 545, 65, 35);
  strokeWeight(thickness);
  fill(255);
  textSize(18);
  textAlign(CENTER, CENTER);
  text("CLEAR", 728, 507);
  text("SAVE", 727, 562);
}



void thickness () { //------------------------
  fill(255);
  stroke(255);
  circle(365, 560, 4);
  circle(640, 560, 35);
  stroke(255);
  strokeWeight(thickness);
  line(390, 560, 600, 560);
  stroke(0);
  strokeWeight(3);
  circle(slider2X, 560, 30);
  thickness = map(slider2X, 390, 600, 2, 20);
  strokeWeight(thickness);
}



void indicator () {
  fill(white);
  stroke(selectedColor);
  circle(400, 505, 35);

  if (selectedColor == white) {
    fill(black); 
    circle(400, 505, 35);
  }
}



void mouseReleased () { //--------------------
  //color buttons
  if (dist(30, 505, mouseX, mouseY) < 20) {
    selectedColor = red;
  }
  if (dist(80, 505, mouseX, mouseY) < 20) {
    selectedColor = orange;
  }
  if (dist(130, 505, mouseX, mouseY) < 20) {
    selectedColor = yellow;
  }
  if (dist(180, 505, mouseX, mouseY) < 20) {
    selectedColor = green;
  }
  if (dist(230, 505, mouseX, mouseY) < 20) {
    selectedColor = blue;
  }
  if (dist(280, 505, mouseX, mouseY) < 20) {
    selectedColor = purple;
  }
  if (dist(330, 505, mouseX, mouseY) < 20) {
    selectedColor = pink;
  }
  if (dist(30, 560, mouseX, mouseY) < 20) {
    selectedColor = white;
  }
  if (dist(330, 560, mouseX, mouseY) < 20) {
    selectedColor = black;
  }
  if (mouseX > 80 && mouseX < 280 && mouseY > 545 && mouseY < 575) {
    selectedColor = color(shade);
  }

  controlSlider();
  controlSlider2();

  //rect(695, 545, 65, 35);

  //clear button
  if (mouseX > 695 && mouseX < 760 && mouseY > 490 && mouseY < 525) {
    fill(white);
    strokeWeight(0);
    rect(0, 0, 800, 470);
  }

  //save button
  if (mouseX > 695 && mouseX < 760 && mouseY > 545 && mouseY < 580) {
    selectOutput("Choose a name for your image file", "saveImage");
  }
}



void mouseDragged () { //----------------------
  if (mouseY < 470) {
    stroke(selectedColor);
    line(pmouseX, pmouseY, mouseX, mouseY);
    println(mouseY);
  }

  controlSlider();
  controlSlider2();

  if (mouseX > 80 && mouseX < 280 && mouseY > 545 && mouseY < 575) {
    selectedColor = color(shade);
  }
}





//PAINT APP
//icons
//make sliders and clear and save tactile

//https://www.google.com/search?q=smiley+faces&tbm=isch&chips=q:smiley+faces,g_1:transparent:aq3PRPcBfxw%3D&rlz=1C1GCEB_enCA991CA991&hl=en&sa=X&ved=2ahUKEwiP5YaM_Ln2AhUeBzQIHRt-Dw0Q4lYoBXoECAEQJg&biw=1423&bih=700#imgrc=NPgnTD-eK-MGyM
