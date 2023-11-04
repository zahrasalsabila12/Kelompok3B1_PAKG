<<<<<<< HEAD
PFont font;

Menu menu = new Menu();
Summer Summer = new Summer();
Spring spring = new Spring();


void setup (){
  size(1280, 720, P3D);
  smooth(); 
  textMode(SHAPE);
  
  //inisialisasi font
  font = createFont("./fonts/PlaypenSans-Bold.ttf", 72);
  textFont(font);
}

void draw(){
  Summer.display();
>>>>>>> c645bc9b67eb4dce28727330f1c6ee7791d2f8b8
}

void keyPressed(){
  
}
