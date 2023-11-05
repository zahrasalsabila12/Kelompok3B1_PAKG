class Fall{
  
  void display(){
    
  
    
    
  //control perpindahan page
    if (key == 's' || key == 'S'){
     spring.display();
   }else if(key == 'm' || key == 'M'){
     fall.display();
   }else if(key == 'w' || key == 'W'){
     winter.display();
   } else if (keyCode == BACKSPACE){
     SeasonControl.currentSeason = 0;
     SeasonControl.isFirstTimePlayed = true;
     menu.pilih = 1;
     menu.season = 0;
   }
   
   
  }
}
