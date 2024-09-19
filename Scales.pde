void setup() {
  size(600, 600);
  noLoop();
}

//taiyaki fish scales


void draw() {
  background(0, 125, 200);
  strokeWeight(2);
  fill(211, 160, 93);
  //Head
  arc(250, 288.5, 150, 183, PI/2, 3*PI/2);
  //Body
  rect(250, 197, 154, 183);
  //Scales
  String bool = "True";
  for (int i = 200; i <= 350; i+=(150/8)) {
    for (int j = 380; j >= 250; j-=(130/7)) {
      if(bool == "True") {
        bool = "False";
      } else {
        bool = "True";
      }
      scaleDraw(j, i, bool);
    }
  }
  //Eyes
  ellipse(225, 250, 30, 30);
  ellipse(225, 250, 22.5, 22.5);
  ellipse(225, 250, 15, 15);
  //Mouth
  beginShape();
  curveVertex(180, 350);
  curveVertex(180, 350);
  curveVertex(193, 340);
  curveVertex(195, 330);
  curveVertex(193, 320);
  curveVertex(185, 310);
  curveVertex(180, 310);
  curveVertex(175, 315);
  curveVertex(170, 320);
  curveVertex(178, 330);
  curveVertex(170, 340);
  curveVertex(170, 340);
  endShape();
  line(170, 340, 180, 350);
  //Tail
  beginShape();
  curveVertex(406, 197);
  curveVertex(406, 197);
  curveVertex(492, 175);
  curveVertex(472, 288.5);
  curveVertex(492, 402);
  curveVertex(406, 380);
  curveVertex(406, 380);
  endShape();
  line(425, 288.5, 470, 288.5);
  line(425, 270, 474, 260);
  line(425, 307, 474, 317);
  line(425, 250, 482, 235);
  line(425, 327, 482, 342);
  line(425, 230, 490, 208);
  line(425, 347, 490, 369);
  //Fin
  line(280, 197, 280, 150);
  arc(282, 197, 155, 95, 3*PI/2, 2*PI);
}

void scaleDraw(int j, int i, String booolean) {
  if (booolean == "True") {
    fill(211, 160, 93);
    beginShape() ;
    curveVertex(j, i);
    curveVertex(j, i);
    curveVertex(j+10, i+3);
    curveVertex(j+17, i+7.5);
    curveVertex(j+20, i+15);
    curveVertex(j+17, i+22.5);
    curveVertex(j+10, i+27);
    curveVertex(j, i+30);
    curveVertex(j, i+30);
    endShape();
  } else if (booolean == "False") {
    fill(211, 160, 93);
    beginShape() ;
    curveVertex(j, i+5);
    curveVertex(j, i+5);
    curveVertex(j+10, i+8);
    curveVertex(j+17, i+12.5);
    curveVertex(j+20, i+20);
    curveVertex(j+17, i+27.5);
    curveVertex(j+10, i+32);
    curveVertex(j, i+35);
    curveVertex(j, i+35);
    endShape();
  }
}
