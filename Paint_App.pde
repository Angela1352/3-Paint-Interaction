// Angela Chen
// 2-3
// Mar 7, 2022

//Pallette
color red      = #FF4C4C;
color orange   = #FFBE46;
color yellow   = #F8F087;
color green    = #B7E3C0;
color blue     = #B8D0DD;
color purple   = #DBBAEF;
color pink     = #F39DD4;
color white    = #FFFFFF;
color black    = #000000;

int toggle;

void setup () {
  size(800, 600);
  background(255);
  strokeWeight(5);
  
  toggle = 1;
}

void draw () {
  toolbar();
}

void toolbar () {
 fill(30);
 stroke(30);
 rect(0, 500, 800, 100);
}


//PAINT APP
//Make 7 rectangle buttons
//circle: draw or erase?
//slider: black to white, stroke Weight



 

// void draw
//  if (toggle > 0) {
//    guidelines();
//  }
//}


//void mouseReleased () {
//  if (mouseX > 250 && mouseX < 550 && mouseY > 200 && mouseY < 400) {
//    toggle = toggle * -1;
//  }
//}

//void guidelines () {
//  textAlign(CENTER, CENTER);
//  fill(purple);
//  text("ON", 400, 290);
//}
