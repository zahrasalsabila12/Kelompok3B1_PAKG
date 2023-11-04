
class Menu {
  
  // Menu control
  int pilih = 1;
  int scene = 0;
  int putar = 1;

  void start(){
  background(#FFFDF0);

  fill(#D6D8D6, 70);
  beginShape();
  vertex(640, 490);
  vertex(1280, 603);
  vertex(1280, 660);
  vertex(640, 490);
  endShape();
  
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
  
  //background menu
  noStroke();
  fill(#2F4D25);
  circle(510, 650, 100);
  circle(640, 650, 100);
  circle(770, 650, 100);
  
  //play
  fill(#FFFDF0);
  triangle(748, 621, 748, 678, 807, 650);
  //credit
  textSize(60);
  text("i", 630, 672);
  //exit
  textSize(60);
  text("X", 490, 672);
  }
  
  void keyPressed(){
    
  }
  
  void displayPohon(){
  //pohon 3 dimensi
  fill(#519548);
  triangle(563, 408, 640, 460, 640, 30);
  fill(#3B7E33);
  triangle(640, 460, 708, 408, 640, 30);
  }
}
