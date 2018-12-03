void mousePressed(){
  if(mouseX >= 20 && mouseX <= 50 && mouseY >= 20 && mouseY <= 50){
    settings = true;
  }
  if(mouseX >= 145 && mouseX <= 245 && mouseY >= 200 && mouseY <= 240 && settings){
    isMute();
    if(volume >= 10){
      volume = 10;
    }
      else{
    volume = volume + 5;
      }
      volumeGain = volume;
  }
  if(mouseX >= 255 && mouseX <= 355 && mouseY >= 200 && mouseY <= 250 && settings){
    isMute();
    if(volume <= -55){
    volume = -55;
    }
    else{
    volume = volume - 5;
    }
    volumeGain = volume;
}
if(mouseX >= 200 && mouseX <= 300 && mouseY >= 300 && mouseY <= 350 && settings){
  volume = volumeMute;
  isMute = true;
  
}
if(mouseX >= 845 && mouseX <= 945 && mouseY >= 200 && mouseY <= 250 && settings){
    eisMute();
    if(evolume >= 10){
      evolume = 10;
    }
      else{
    evolume = evolume + 5;
    shrek1.play();
    shrek1.rewind();
      }
      evolumeGain = evolume;
  }
  if(mouseX >= 955 && mouseX <= 1055 && mouseY >= 200 && mouseY <= 250 && settings){
    eisMute();
    if(evolume <= -55){
    evolume = -55;
    }
    else{
    evolume = evolume - 5;
    shrek1.play();
    shrek1.rewind();
    }
    evolumeGain = evolume;
}
if(mouseX >= 900 && mouseX <= 1000 && mouseY >= 300 && mouseY <= 350 && settings){
  evolume = evolumeMute;
  eisMute = true;
  
}

if(mouseX >= 400 && mouseX <= 550 && mouseY >= 500 && mouseY <= 575){
  settings = false;
}

if(mouseX >= 650 && mouseX <= 800 && mouseY >= 500 && mouseY <= 575){
  exit();
}
}

void soundSettings(){
  background(50);
  fill(0);
  stroke(1);
  line(0, height / 1.5, width, height / 1.5);
  line(600, 0, 600, 465);
  rect(200, 300, 100, 50); //background mute
  rect(900, 300, 100, 50); //effect mute
  fill(0, 250, 0);
  rect(145, 200, 100, 50); //background Volume Up
  rect(845, 200, 100, 50); //effect Volume Up
  rect(400, 500, 150, 75); //Resume
  fill(250, 0, 0);
  rect(255, 200, 100, 50); //background Volume Down
  rect(955, 200, 100, 50); //effect Volume Down
  rect(650, 500, 150, 75); //Quit
  fill(255);
  textSize(15);
  text("Mute", 230, 330);
  text("Mute", 930, 330);
  text("Volume Up", 155, 230);
  text("Volume Up", 855, 230);
  text("Volume Down", 255, 230);
  text("Volume Down", 955, 230);
  textSize(30);
  text("Background Music", 125, 30);
  text("Sound Effects", 850, 30);
  text("Resume", 415, 545);
  text("Quit", 685, 545);
}

//if the mute button is activated, pressing the volume button will
//restore the volume to the volume it was previously was at
void isMute(){
  if(isMute){
      isMute = false;
      volume = volumeGain;
    }
}

void eisMute(){
  if(eisMute){
    eisMute = false;
    evolume = evolumeGain;
  }
}
