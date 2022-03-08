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
float sliderX; //slider2X
float shade; //thickness



void setup () { //----------------------------
  size(800, 600);
  background(255);
  strokeWeight(5);
  stroke(selectedColor);
  selectedColor = 0;

  sliderX = 200;
  shade = 127;

  // slider2X = 300;
  // thickness = 2;
}


void draw () { //-----------------------------
  toolbar();
  colorButtons();
  shadeButtons();
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



void toolbar () { //---------------------------
  fill(50);
  stroke(50);
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

void shadeButtons () {
  tactile(30, 560, 20);
  fill(white);
  circle(30, 560, 40);
  stroke(255);
  tactile2(330, 560, 20);
  fill(black);
  circle (330, 560, 40);

  //SLIDER -----------------------------------
  stroke(shade);
  shade = map(sliderX, 80, 280, 0, 255);
  //thickness = map(slider2X, 500, 150, 2, 30);

  //strokeWeight(thickness);

  line(80, 560, 280, 560);
  circle(sliderX, 560, 30);
  //circle(sliderX, 300, 50);

  //line(80, 150, 80, 500);
  //circle(80, slider2X, 50);
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

  controlSlider();
}


void mouseDragged () { //----------------------
  if (mouseY < 478) {
    stroke(selectedColor);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }

  controlSlider();
}


void controlSlider () {
  if (mouseX > 80 && mouseX < 280 && mouseY > 545 && mouseY < 575) {
    sliderX = mouseX;
  }
}





//PAINT APP
//square: draw or erase?
//slider: black to white, stroke Weight
//square: save, clear, load
//undo & redo
