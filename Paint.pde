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


void setup () { //----------------------------
  size(800, 600);
  background(255);
  strokeWeight(5);
  stroke(selectedColor);
  selectedColor = 0;
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


void toolbar () { //---------------------------
  fill(50);
  stroke(50);
  rect(0, 480, 800, 120);
}

void colorButtons () { //----------------------
  strokeWeight(2);

  tactile(30, 505, 40);
  fill(red);
  circle(30, 505, 40);

  tactile(85, 505, 40);
  fill(orange);
  circle(85, 505, 40);

  tactile(145, 505, 40);
  fill(yellow);
  circle(145, 505, 40);

  tactile(205, 505, 40);
  fill(green);
  circle(205, 505, 40);

  tactile(265, 505, 40);
  fill(blue);
  circle(265, 505, 40);

  tactile(325, 505, 40);
  fill(purple);
  circle(325, 505, 40);

  tactile(385, 505, 40);
  fill(pink);
  circle(385, 505, 40);
}

void shadeButtons () {
  fill(white);
  circle(30, 560, 40);
  stroke(255);
  fill(black);
  circle (385, 560, 40);
  
  //SLIDER -----------------------------------
  
  
}


void mouseReleased () { //--------------------
  //color buttons
  if (dist(30, 505, mouseX, mouseY) < 40) {
    selectedColor = red;
  }
  if (dist(85, 505, mouseX, mouseY) < 40) {
    selectedColor = orange;
  }
  if (dist(145, 505, mouseX, mouseY) < 40) {
    selectedColor = yellow;
  }
  if (dist(205, 505, mouseX, mouseY) < 40) {
    selectedColor = green;
  }
  if (dist(265, 505, mouseX, mouseY) < 40) {
    selectedColor = blue;
  }
  if (dist(325, 505, mouseX, mouseY) < 40) {
    selectedColor = purple;
  }
  if (dist(385, 505, mouseX, mouseY) < 40) {
    selectedColor = pink;
  }
  
  
}


void mouseDragged () { //----------------------
  stroke(selectedColor);
  line(pmouseX, pmouseY, mouseX, mouseY);
}


//SLIDERRRR 
//float sliderX, sliderY;
//float thickness;
//float shade;

//void setup () {
//  size(800, 600);
//  strokeWeight(5);
//  stroke(salmon);
//  fill(salmon);
//  sliderX = 400;
//  sliderY = 300;
//  thickness = 2;
//  shade = 100;
//}

//void draw () {
//  background(shade); 

//  shade = map(sliderX, 350, 750, 0, 255);
//  thickness = map(sliderY, 500, 150, 2, 30);

//  strokeWeight(thickness);

//  line(350, 300, 750, 300);
//  circle(sliderX, 300, 50);

//  line(80, 150, 80, 500);
//  circle(80, sliderY, 50);
//}

//void mouseDragged () {
//  controlSlider();
//}

//void mouseReleased () {
//  controlSlider();
//}

//void controlSlider () {
//  if (mouseX > 350 && mouseX < 750 && mouseY > 275 && mouseY < 325) {
//    sliderX = mouseX;
//  }
//  if (mouseX > 60 && mouseX < 110 && mouseY > 150 && mouseY < 500) {
//    sliderY = mouseY;
//  }
//}





//PAINT APP
//square: draw or erase?
//slider: black to white, stroke Weight
//square: save, clear, load


//ASK PELLETIER
//how to make rectangles tactile
