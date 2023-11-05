import processing.sound.*;

PFont font;

//Audio
SoundFile audioMenuClick;
SoundFile audioMenuMove;

Menu menu = new Menu();
Summer summer = new Summer();
Spring spring = new Spring();
Winter winter = new Winter();
Fall fall = new Fall();
Rumah rumah = new Rumah();

void setup (){
  size(1280, 720, P3D);
  smooth(); 
  textMode(SHAPE);
  
  //inisialisasi font
  font = createFont("./fonts/PlaypenSans-Bold.ttf", 72);
  textFont(font);
  
  //inisialisasi audio
  audioMenuClick = new SoundFile(this, "./Audio/clicked.mp3");
  audioMenuMove = new SoundFile(this, "./Audio/clicked.mp3");
  
  //audio volume
  audioMenuClick.amp(0.5);
  audioMenuMove.amp(0.5);
  
  //class audio
  menu.audioMenuClick = audioMenuClick;
  menu.audioMenuMove = audioMenuMove;
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
