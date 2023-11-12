import processing.sound.*;

PFont font;
PImage img;

//Audio
SoundFile audioMenuClick;
SoundFile audioMenuMove;
SoundFile audioWinter;
SoundFile audioSummer;
SoundFile audioFall;
SoundFile audioSpring;
SoundFile audioMenu;
SoundFile audioRain;

Menu menu = new Menu();
Summer summer = new Summer();
Spring spring = new Spring();
Winter winter = new Winter();
Fall fall = new Fall();
Rumah rumah = new Rumah();
Information information = new Information();
Credit credit = new Credit();

// Menu control
int pilih = 1;
int season = 0;
int putar = 1;

boolean isFirstTimePlayed = true;
boolean creditShow = true;
boolean informationShow = true;

// Buat Jumlah Daun Gugur Berjatuhan
int jumlahDaunGugur = 50;
float[] x = new float[jumlahDaunGugur];
float[] y = new float[jumlahDaunGugur];
//inisialisasi kecepatan Daun Gugur
float[] speed = new float[jumlahDaunGugur];

// Buat Jumlah Hujan
int jumlahHujan = 50;
float[] xH = new float[jumlahHujan];
float[] yH = new float[jumlahHujan];
//inisialisasi kecepatan Daun Gugur
float[] speedH = new float[jumlahHujan];

boolean isHujan = false;
  
void setup() {
  size(1280, 720, P3D);
  smooth();
  textMode(SHAPE);
  //mengatur lokasi dan kecepatan Daun Gugur
  for (int i = 0; i < jumlahDaunGugur; i++) {
    x[i] = random(width);
    y[i] = random(height);
    speed[i] = random(1,5);
  }
  //mengatur lokasi dan kecepatan Daun Gugur
  for (int i = 0; i < jumlahHujan; i++) {
    xH[i] = random(width);
    yH[i] = random(height);
    speedH[i] = random(15,20);
  }

  //inisialisasi font
  font = createFont("./fonts/PlaypenSans-Bold.ttf", 72);
  textFont(font);

  //inisialisasi audio
  audioMenuClick = new SoundFile(this, "./Audio/clicked.mp3");
  audioMenuMove = new SoundFile(this, "./Audio/clicked.mp3");
  audioWinter = new SoundFile(this, "./audio/winter.wav"); // Buat class suara winter
  audioSummer = new SoundFile(this, "./audio/summer.wav"); // Buat class suara summer
  audioFall = new SoundFile(this, "./audio/fall.wav"); // Buat class suara fall
  audioSpring = new SoundFile(this, "./audio/spring.wav"); // Buat class suara spring
  audioMenu = new SoundFile(this, "./audio/menu.mp3");
  audioRain = new SoundFile(this, "./audio/rain.mp3"); // Buat class suara spring
  //audio volume
  audioWinter.amp(0.5);
  audioSummer.amp(0.5);
  audioFall.amp(0.5);
  audioSpring.amp(0.5);

  img = loadImage("image/information.jpg");
  img.resize(1280, 720);
}

void keyReleased() {
  if (isFirstTimePlayed) {
    if (key==CODED) {
      if (keyCode == RIGHT) {
        audioMenuMove.play();
        pilih-=1;
      } else if (keyCode==LEFT) {
        audioMenuMove.play();
        pilih+=1;
      }
    }
    if (key == 32 && pilih == 1) {
      audioMenuClick.play();
      creditShow = false;
      isFirstTimePlayed = false;
      season = 5;
    }
    if (key == 32 && pilih == 2) {
      audioMenuClick.play();
      isFirstTimePlayed = false;
      season = 6;
    }
    if (key == 32 && pilih == 3) {
      season = 7;
    }
  } else if (creditShow) {
    if (keyCode == BACKSPACE) {
      audioMenuClick.play();
      isFirstTimePlayed = true;
      season = 0;
    }
  } else if (informationShow) {
    if (key == 32 && pilih == 1) {
      audioMenuClick.play();
      informationShow = false;
      creditShow = false;
      isFirstTimePlayed = false;
      audioMenu.pause();
      season = 1;
    }
  } else {
    //control perpindahan page
    if (key == 's' || key == 'S') {
      season = 1;
    } else if (key == 'm' || key == 'M') {
      season = 2;
    } else if (key == 'f' || key == 'F') {
      season = 3;
    } else if (key == 'w' || key == 'W') {
      season = 4;
    } else if (keyCode == BACKSPACE) {
      audioMenuClick.play();
      audioMenu.play();
      audioSummer.pause();
      audioFall.pause();
      audioWinter.pause();
      audioSpring.pause();
      isFirstTimePlayed = true;
      informationShow = true;
      creditShow = true;
      menu.start();
      season = 0;
    }
  }
}

void draw() {
  if (season == 0) {
    audioMenu.pause();
    audioMenu.play();
    //if (!audioMenu.isPlaying()) {
    //// Jika selesai, putar lagi dari awal
    //  audioMenu.cue(0);
    //  audioMenu.play();
  //}
    menu.start();
  } else if (season == 1) {
    audioSpring.pause();
    audioSpring.play();
    audioSummer.pause();
    audioFall.pause();
    audioWinter.pause();
    spring.display();
  } else if (season == 2) {
    audioSpring.pause();
    audioFall.pause();
    audioWinter.pause();
    summer.display();
  } else if (season == 3) {
    audioSpring.pause();
    audioSummer.pause();
    audioFall.pause();
    audioFall.play();
    audioWinter.pause();
    fall.display();
  } else if (season == 4) {
    audioSpring.pause();
    audioSummer.pause();
    audioFall.pause();
    audioWinter.pause();
    audioWinter.play();
    winter.display();
  } else if (season == 5) {
    information.show();
  } else if (season == 6) {
    credit.display();
  } else if (season == 7) {
    exit();
  }
}

void mouseClicked(){
  audioMenuClick.play();
  isHujan = !isHujan;
}
