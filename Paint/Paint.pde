// Angela Chen
// 2-3
// Mar 7, 2022



//Pallette ---------------------------------------------
color red      = #FF4646;
color orange   = #FFBE46;
color yellow   = #F8F087;
color green    = #B7E3C0;
color blue     = #B8D0DD;
color purple   = #DBBAEF;
color pink     = #F39DD4;
color white    = #FFFFFF;
color black    = #000000;



//variables --------------------------------------------
color selectedColor;
int sliderX, slider2X;
float shade, thickness;

PImage icon1, icon2, icon3, icon4;

boolean iconOn, icon1On; //true or false



void setup () { //--------------------------------------
  size(800, 600);
  background(255);
  strokeWeight(5);
  stroke(selectedColor);
  selectedColor = 0;

  sliderX = 180;
  shade = 127;

  slider2X = 500;
  thickness = 2;

  icon1 = loadImage("icon1.png");
  
  icon1On = false;
}



void draw () { //---------------------------------------
  strokeWeight(thickness);
  toolbar();
  colorButtons();
  shadeButtons();
  thickness();
  rectangleButtons();
  indicator();
  icon();
}



void tactile (int x, int y, int r) { //-----------------
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(white);
  } else {
    stroke(black);
  }
}



void tactile2 (int x, int y, int r) { //----------------
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(black);
  } else {
    stroke(white);
  }
}



void tactile3 (int x, int y, int w, int h) { //----------------
  if (mouseX > x && mouseX < x+w && mouseY > y &&  mouseY < y+w) {
    stroke(black);
  } else {
    stroke(white);
  }
}



void tactile4 (int x, int y, int w, int h) { //----------------
  if (mouseX > x && mouseX < x+w && mouseY > y &&  mouseY < y+w) {
    fill(200);
  } else {
    fill(white);
  }
}



void controlSlider () { //------------------------------
  if (mouseX > 80 && mouseX < 280 && mouseY > 545 && mouseY < 575) {
    sliderX = mouseX;
  }
}



void controlSlider2 () { //------------------------------
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



void toolbar () { //--------------------------------------
  fill(50);
  stroke(50);
  strokeWeight(20);
  rect(0, 480, 800, 120);
}



void colorButtons () { //---------------------------------
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



void shadeButtons () { //---------------------------------
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
  tactile(sliderX, 560, 15);
  circle(sliderX, 560, 30);
}



void rectangleButtons () {
  tactile3(695, 490, 65, 35);
  strokeWeight(2);
  fill(150);
  rect(695, 490, 65, 35);
  tactile3(695, 545, 65, 35);
  rect(695, 545, 65, 35);
  strokeWeight(thickness);
  fill(255);
  textSize(18);
  textAlign(CENTER, CENTER);
  text("CLEAR", 728, 507);
  text("SAVE", 727, 562);
}



void icon () {
  tactile4(440, 485, 40, 40);
  icon1OnOff();
  strokeWeight(3);
  rect(440, 485, 40, 40);
  image(icon1, 440, 485, 40, 40);
}



void thickness () { //----------------------------------
  fill(255);
  stroke(255);
  circle(365, 560, 4);
  circle(640, 560, 35);
  stroke(255);
  strokeWeight(thickness);
  line(390, 560, 600, 560);
  stroke(0);
  strokeWeight(3);
  tactile(slider2X, 560, 15);
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



void icon1OnOff () {
  if (icon1On == true) {
    stroke(orange);
    strokeWeight(3);
  } else {
    stroke(255);
    strokeWeight(1);
  }
}




void mouseReleased () { //--------------------------------
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


  //drawing button
  if (icon1On == false) {
    //squiggly line
    if (mouseY < 470) {
      stroke(selectedColor);
      strokeWeight(thickness);
      line(pmouseX, pmouseY, mouseX, mouseY);
      println(mouseY);
    }
  } else {
    //icons
    image(icon1, mouseX, mouseY, thickness+80, thickness+80);
  }


  //icon buttons
  if (mouseX > 440 && mouseX < 480 && mouseY > 485 && mouseY < 525) {
    icon1On = !icon1On;
  }
}



void mouseDragged () { //----------------------------------
  if (icon1On == false) {
    //squiggly line
    if (mouseY < 470) {
      stroke(selectedColor);
      strokeWeight(thickness);
      line(pmouseX, pmouseY, mouseX, mouseY);
      println(mouseY);
    }
  } else {
    //icons
    image(icon1, mouseX, mouseY, thickness+80, thickness+80);
  }


  controlSlider();
  controlSlider2();

  if (mouseX > 80 && mouseX < 280 && mouseY > 545 && mouseY < 575) {
    selectedColor = color(shade);
  }
}
