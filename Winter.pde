
class Winter {
  
  void display(){
  
    //control perpindahan page
    if (key == 'm' || key == 'M'){
     spring.display();
   }else if(key == 'f' || key == 'F'){
     fall.display();
   }else if(key == 's' || key == 'S'){
     winter.display();
   }else if (keyCode == BACKSPACE){
     SeasonControl.currentSeason = 0;
     SeasonControl.isFirstTimePlayed = true;
     menu.pilih = 1;
     menu.season = 0;
   }
   
   
  }
}
