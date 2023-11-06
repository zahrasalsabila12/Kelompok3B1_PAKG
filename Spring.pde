class Spring{
  
  float x;
  float size = 100;
  
  
  void display(){
    background(#D4F4FC);
    //awan
    pushMatrix();
    x = x + 0.2;
    translate(x-200, height/2-6*size/2);
    fill(#FAFFFF);
    circle(97, 120, 90);
    circle(145, 65, 90);
    circle(210, 75, 90);
    circle(275, 105, 90);
    circle(223, 149, 90);
    circle(150, 160, 90);
    circle(171, 127, 90);
    circle(390, 182, 50);
    circle(425, 205, 50);
    circle(425, 155, 50);
    circle(463, 142, 50);
    circle(493, 170, 50);
    circle(509, 200, 50);
    circle(463, 189, 70);
    circle(663, 112, 120);
    circle(738, 62, 120);
    circle(843, 62, 120);
    circle(928, 102, 120);
    circle(738, 132, 120);
    circle(828, 132, 120);
    circle(1225, 223, 70);
    circle(1185, 200, 70);
    circle(1185, 250, 70);
    circle(1125, 200, 70);
    circle(1125, 260, 70);
    circle(1076, 231, 70);
    circle(1151, 228, 70);
    popMatrix();
    
    //gunung biru
    noStroke();
    fill(#A2B6E5);
    beginShape();
    curveVertex(0, 260);
    curveVertex(0, 260);
    curveVertex(100, 432);
    curveVertex(175, 375);
    curveVertex(303, 578);
    curveVertex(394, 493);
    curveVertex(520, 604);
    curveVertex(590, 560);
    curveVertex(680, 635);
    curveVertex(330, 695);
    curveVertex(0, 680);
    curveVertex(0, 680);
    endShape();
    
    // gunung biru
    noStroke();
    fill(#A2B6E5);
    beginShape();
    curveVertex(1280, 310);
    curveVertex(1280, 310);
    curveVertex(1175, 462);
    curveVertex(1096, 380);
    curveVertex(955, 553);
    curveVertex(884, 476);
    curveVertex(714, 682);
    curveVertex(1280, 720);
    curveVertex(1280, 720);
    endShape();
    
    //bukit
    noStroke();
    fill(#54AF47);
    beginShape();
    curveVertex(1280, 562);
    curveVertex(1280, 562);
    curveVertex(1037, 578);
    curveVertex(804, 601);
    curveVertex(337, 702);
    curveVertex(1280, 720);
    curveVertex(1280, 720);
    endShape();
    
    //bukit
    noStroke();
    fill(#71D163);
    beginShape();
    curveVertex(0, 610);
    curveVertex(0, 610);
    curveVertex(392, 625);
    curveVertex(611, 643);
    curveVertex(1062, 720);
    curveVertex(0, 720);
    curveVertex(0, 720);
    endShape();
    
    //bunga gugur
    noStroke();
    fill(#FCA1CF);
    circle(25, 637, 5);
    circle(70, 662, 5);
    circle(27, 700, 5);
    circle(70, 662, 5);
    circle(129, 639, 5);
    circle(132, 689, 5);
    circle(84, 705, 5);
    circle(175, 663, 5);
    circle(205, 702, 5);
    circle(204, 634, 5);
    circle(231, 658, 5);
    circle(277, 636, 5);
    circle(275, 699 , 5);
    circle(329, 637, 5);
    circle(345, 701, 5);
    circle(357, 659, 5);
    circle(387, 641, 5);
    circle(411, 699, 5);
    circle(422, 667, 5);
    circle(467, 641, 5);
    circle(470, 690, 5);
    circle(502, 668, 5);
    circle(555, 650, 5);
    circle(535, 706, 5);
    circle(587, 681, 5);
    circle(205, 702, 5);
    circle(642, 663, 5);
    circle(602, 705, 5);
    circle(665, 695, 5);
    circle(205, 702, 5);
    circle(720, 675, 5);
    circle(765, 705, 5);
    circle(830, 695, 5);
    circle(768, 670, 5);
    circle(879, 709, 5);
    circle(924, 698, 5);
    circle(983, 703, 5);
    
    //pohon
    fill(#835C1C);
    quad(295, 463, 315, 463, 315, 715, 295, 715);
    quad(232, 510, 300, 565, 300, 581, 232, 520);
    fill(#ff8fab);
    circle(300, 315, 150);
    circle(223, 395, 150);
    circle(410, 357, 140);
    circle(395, 465, 140);
    circle(335, 370, 140);
    fill(#ffc2d1);
    circle(250, 400, 130);
    circle(343, 453, 130);
    circle(160, 453, 130);
    rect(155, 418, 200, 100);
    
    // ATUR POSISI RUMAH
    push();
    translate(930,420,8);
    rumah.display();
<<<<<<< HEAD
    pop();
    
    //audioMenuClick.play()
=======
    pop();   
    //audioMenuClick.play();

>>>>>>> bee47f2ee8b9b30b953d6ccc5ba7715e5be68418
   if (key == 'm' || key == 'M'){
     audioSummer.pause();
      audioSummer.play();
      audioFall.pause();
      audioWinter.pause();
     summer.display();
   }else if(key == 'f' || key == 'F'){
     audioSummer.pause();
      audioFall.pause();
      audioFall.play();
      audioWinter.pause();
     fall.display();
   }else if(key == 'w' || key == 'W'){
     audioSummer.pause();
      audioFall.pause();
      audioWinter.pause();
      audioWinter.play();
     winter.display();
   }else if (keyCode == BACKSPACE){
     SeasonControl.currentSeason = 0;
     SeasonControl.isFirstTimePlayed = true;
     menu.pilih = 1;
     menu.season = 0;
   } else {}
   
 }
 
 
  }
