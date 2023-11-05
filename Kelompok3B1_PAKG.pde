PFont font;

Menu menu = new Menu();
Summer summer = new Summer();
Spring spring = new Spring();
Rumah rumah = new Rumah();

void setup (){
  size(1280, 720, P3D);
  smooth(); 
  textMode(SHAPE);
  
  //inisialisasi font
  font = createFont("./fonts/PlaypenSans-Bold.ttf", 72);
  textFont(font);
}

void draw(){
  menu.start();
}

void keyPressed(){
  // Menu screen control
  if (SeasonControl.currentSeason == 0) {
    menu.keyPressed();
  }
}
