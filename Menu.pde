 //Credit credit = new Credit();
float d=0;

class Menu {

  ////Audio
  //SoundFile audioMenuClick;
  //SoundFile audioMenuMove;

  //// Menu control
  //int pilih = 1;
  //int season = 0;
  //int putar = 1;


  //Loading loading = new Loading();
  //boolean isLoading = false;

  void start() {
    pushMatrix();
    {
      background(#FFFDF0);
      displayPohon();
      //translate(-130, -20);
      if (pilih ==1) {
        //lingkaran play
        noStroke();
        fill(#81672F);
        circle(770, 650, 100);
        fill(#FFFDF0);
        triangle(748, 621, 748, 678, 807, 650);
        //lingkaran credit
        fill(#2F4D25);
        circle(640, 650, 100);
        fill(#FFFDF0);
        textSize(60);
        text("i", 630, 672);
        //lingkaran exit
        fill(#2F4D25);
        circle(510, 650, 100);
        fill(#FFFDF0);
        textSize(60);
        text("X", 490, 672);
      } else if (pilih == 2) {
        //circle play
        fill(#2F4D25);
        circle(770, 650, 100);
        fill(#FFFDF0);
        triangle(748, 621, 748, 678, 807, 650);
        //circle credit
        fill(#81672F);
        circle(640, 650, 100);
        fill(#FFFDF0);
        textSize(60);
        text("i", 630, 672);
        //circle exit
        fill(#2F4D25);
        circle(510, 650, 100);
        fill(#FFFDF0);
        textSize(60);
        text("X", 490, 672);
      } else if (pilih == 3) {
        //circle play
        fill(#2F4D25);
        circle(770, 650, 100);
        fill(#FFFDF0);
        triangle(748, 621, 748, 678, 807, 650);
        //lingkaran credit
        fill(#2F4D25);
        circle(640, 650, 100);
        fill(#FFFDF0);
        textSize(60);
        text("i", 630, 672);
        //circle exit
        fill(#81672F);
        circle(510, 650, 100);
        fill(#FFFDF0);
        textSize(60);
        text("X", 490, 672);
      } else if (pilih > 3) {
        pilih = 1;
      } else if (pilih < 1) {
        pilih = 3;
      }
    }
    popMatrix();
  }

  //void keyPressed() {
  //  if (key == 32 && season != 1) {
  //    audioMenuClick.play();
  //    if (season == 2) {
  //      season = 0;
  //    } else if (pilih == 1) {
  //      season = 1;
  //    } else if (pilih == 2) {
  //      season = 2;
  //    } else if (pilih == 3) {
  //      season = 3;
  //    }
  //  }

  //  if (season != 0) {
  //    return;
  //  }

  //  if (key==CODED)
  //  {
      //if (keyCode==RIGHT) {
      //  pilih-=1;
      //} else if (keyCode==LEFT) {
      //  pilih+=1;
      //}
  //  } else {
  //    fill(#81672F);
  //    if (key == CODED && (keyCode == RIGHT || keyCode == LEFT)) {
  //      audioMenuMove.play();
  //    }
  //  }
  //}

  void displayPohon() {
    //bayangan pohon
    fill(#D6D8D6, 70);
    beginShape();
    vertex(640, 490);
    vertex(1280, 603);
    vertex(1280, 660);
    vertex(640, 490);
    endShape();

    //batang pohon
    fill(#5F4122);
    beginShape();
    vertex(633, 425);
    vertex(650, 425);
    vertex(650, 500);
    vertex(633, 500);
    endShape();

    //judul
    fill(#2F4D25);
    textSize(20);
    text("~ VERANDERING VAN SEISOENE ~", 458, 535);
    
    pushMatrix();{
    translate(width/2,0,0);
    rotateY(d * 0.05);
    d+=0.3;
    noStroke();
    fill(#519548);
    //depan
    beginShape();
    vertex(0,100,0);
    vertex(70,432,70);
    vertex(-70,432,70);
    vertex(0,100,0);
    endShape();
    //kanan
    fill(#519548);
    beginShape();
    vertex(0,100,0);
    vertex(70,432,70);
    vertex(70,432,-70);
    vertex(0,100,0);
    endShape();
    //belakang
    fill(#519548);
    beginShape();
    vertex(0,100,0);
    vertex(70,432,-70);
    vertex(-70,432,-70);
    vertex(0,100,0);
    endShape();
    //kiri
    fill(#519548);
    beginShape();
    vertex(0,100,0);
    vertex(-70,432,70);
    vertex(-70,432,-70);
    vertex(0,100,0);
    endShape();
} popMatrix();
  }
}
