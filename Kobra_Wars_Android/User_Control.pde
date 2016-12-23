//This function contains the user controls for both Kobras
int wait_1=0, wait_2=0, buffer = 10;
void user_control()
{
  //First Player Control Start          Both codes are nearly identical. Only will comment for Player 1
      wait_1++;
      wait_2++;
      if(mousePressed && wait_1 > buffer  )            //If key is a coded key    
      {
        
        wait_1 = 0;
        if(mouseX < width/2 && mouseY > height/2)        //If it is up
        {
          if (first_down)        //If the Kobra is going down intially, and someone presses up, nothing will happen
          {
            first_up = false;          //Else, up boolean turns truw and everything else turns false
            first_down = false;
            first_left = false;
            first_right = true;
           }
          else if(first_up)
           {
            first_up = false;          //Else, up boolean turns truw and everything else turns false
            first_down = false;
            first_left = true;
            first_right = false;
           }
           else if(first_left)
           {
            first_up = false;          //Else, up boolean turns truw and everything else turns false
            first_down = true;
            first_left = false;
            first_right = false;
           }
           else if(first_right)
           {
            first_up = true;          //Else, up boolean turns truw and everything else turns false
            first_down = false;
            first_left = false;
            first_right = false;
           }
        }
        else if(mouseX > width/2 && mouseY > height/2)            //Same as aboave
        {
          if (first_up)
         {
            first_up = false;
            first_down = false;
            first_left = false;
            first_right = true;
          }
          else if(first_down)
          {
            first_up = false;
            first_down = false;
            first_left = true;
            first_right = false;
          }
          else if(first_right)
          {
            first_up = false;
            first_down = true;
            first_left = false;
            first_right = false;
          }
          else if(first_left)
          {
            first_up = true;
            first_down = false;
            first_left = false;
            first_right = false;
          }
         }
      }
         
      if(mousePressed && wait_2 > buffer  )
      {
                                                                                    //Second player
        
        wait_2 = 0;
        if(mouseX < width/2 && mouseY < height/2)        //If it is up
         {
          if (sec_up)
         {
            sec_up = false;
            sec_down = false;
            sec_left = false;
            sec_right = true;
          }
          else if(sec_down)
          {
            sec_up = false;
            sec_down = false;
            sec_left = true;
            sec_right = false;
          }
          else if(sec_right)
          {
            sec_up = false;
            sec_down = true;
            sec_left = false;
            sec_right = false;
          }
          else if(sec_left)
          {
            sec_up = true;
            sec_down = false;
            sec_left = false;
            sec_right = false;
          }
         }
         else if(mouseX > width/2 && mouseY < height/2)
         {
           if (sec_down)        //If the Kobra is going down intially, and someone presses up, nothing will happen
          {
            sec_up = false;          //Else, up boolean turns truw and everything else turns false
            sec_down = false;
            sec_left = false;
            sec_right = true;
           }
          else if(sec_up)
           {
            sec_up = false;          //Else, up boolean turns truw and everything else turns false
            sec_down = false;
            sec_left = true;
            sec_right = false;
           }
           else if(sec_left)
           {
            sec_up = false;          //Else, up boolean turns truw and everything else turns false
            sec_down = true;
            sec_left = false;
            sec_right = false;
           }
           else if(sec_right)
           {
            sec_up = true;          //Else, up boolean turns truw and everything else turns false
            sec_down = false;
            sec_left = false;
            sec_right = false;
           }
           
           
         }
      }
       
      
      
      if (first_right)                //Whatever boolean is true at this stage, the x or y coordinate will increase by a factor of the variable speed
          {  x+=speed;  }
      else if (first_left)
          {  x-=speed;  }
      else if(first_up)
          {  y-=speed;  }
      else if(first_down) 
          {  y+=speed;  }                  
      //First Player Control End
      
      
      
      //Second Player Controls Start              //See Player 1 for reference
      
        
      
      if (sec_right)
          {  h+=speed;  }
      else if (sec_left)
          {  h-=speed;  }
      else if(sec_up)
          {  v-=speed;  }
      else if(sec_down) 
          {  v+=speed;  }
      //Second Player Control Ends    
}