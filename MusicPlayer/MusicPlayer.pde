import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
AudioPlayer song1, song2, song3;

color white = #FFFFFF;

void setup() {
  size(500, 600);
  minim = new Minim(this);
  song1 = minim.loadFile("Mess Call - USAF Heritage of America Band .mp3");
  song2 = minim.loadFile("The_Sleeping_Prophet.mp3");
  song3 = minim.loadFile("Forget Me Not - Patrick Patrikios.mp3");
}

void draw() {
  
}

void keyPressed() { 
  if (key == '1' || key == '!') {
    song1.play();
  }
  //
  if (key == 'o' || key =='O'){
    song1.pause();
  }
  //
  if ( song1.position() == song1.length() ) {
    song2.play();
  }
  //
  if (key == 's' || key == 'S') {
    song1.pause();
    song1.rewind();
  }
  //
  if (key == '2' || key == '2') {
    song2.play();
  }
  //
  if (key == 'o' || key =='O'){
    song2.pause();
  }
  //
  if ( song2.position() == song2.length() ) {
    song3.play();
  }
  //
  if (key == 's' || key == 'S') {
    song2.pause();
    song2.rewind();
  }
    if (key == '3' || key == '3') {
    song3.play();
  }
  //
  if (key == 'o' || key =='O'){
    song3.pause();
  }
  //
  if ( song2.position() == song2.length() ) {
    song1.play();
  }
  //
  if (key == 's' || key == 'S') {
    song3.pause();
    song3.rewind();
  }
}

void mousePressed() {
  
}
