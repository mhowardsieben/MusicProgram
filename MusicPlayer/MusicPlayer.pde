import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int currentSong = 0;
int nextSong = 1;
int loopNum = 1;
color white = #FFFFFF;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;

void setup() {
  size(1920, 1080);
  minim = new Minim(this);
  song[0] = minim.loadFile("Mess Call - USAF Heritage of America Band .mp3");
  song[1] = minim.loadFile("The_Sleeping_Prophet.mp3");
  song[2] = minim.loadFile("Forget Me Not - Patrick Patrikios.mp3");
  songMetaData[0] = song[0].getMetaData();
  songMetaData[1] = song[1].getMetaData();
  songMetaData[2] = song[2].getMetaData();
  for(int i=0; i<song.length; i++) {
    songMetaData[i] = song[i].getMetaData();
  }
  //
  println("Start of Console");
  println("Click the Canvas to finish starting App");
  println("Press 1, 2, or 3 respectively to play a song");
  println("Press P to Pause");
  println("Press S to Stop and Rewind");
  println("Press F to Fast Forward and R to Rewind");
  println("Press L to Loop");
  //
  println("\n\nVerifying MetaData");
  println("File Name:", songMetaData[currentSong].fileName() );
  println("Song Length (in milliseconds) :", songMetaData[currentSong].length() );
  println("Song Length (in Seconds :", songMetaData[currentSong].length() );
  println("Title:", songMetaData[currentSong].title() );
  println("Author:", songMetaData[currentSong].author() );
  println("Composer:", songMetaData[currentSong].composer());
  println("Orchestra:", songMetaData[currentSong].orchestra() );
  println("Album:", songMetaData[currentSong].album() );
  println("disc:", songMetaData[currentSong].disc() );
  println("Publisher:", songMetaData[currentSong].publisher() );
  println("Date Release:", songMetaData[currentSong].date() );
  println("Copyright:", songMetaData[currentSong].copyright() );
  println("Comments:", songMetaData[currentSong].comment() );
  println("Lyrics:", songMetaData[currentSong].lyrics() );
  println("Track:", songMetaData[currentSong].track() );
  println("Genre:", songMetaData[currentSong].genre() );
  println("Encoded:", songMetaData[currentSong].encoded() );
  //
  playButtonX = width*2/16;
  playButtonY = height*13/16;
  playButtonWidth = width*2/16;
  playButtonHeight = height*2/16;
}

void draw() {
  background(white);
  fill(0);
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
}

void keyPressed() { 
  if (key == '1' || key == '!') {
    song[currentSong].play();
  }
  //
  if (key == 'p' || key =='P'){
    song[currentSong].pause();
  }
  //
  if ( song[currentSong].position() == song[currentSong].length() ) {
    song[nextSong].play();
  }
  //
  if (key == 's' || key == 'S') {
    song[currentSong].pause();
    song[currentSong].rewind();
  }
  //
  if(key == 'f' || key == 'F') song[currentSong].skip(5000);
  if(key == 'r' || key == 'R') song[currentSong].skip(-5000);
  if ( key == 'l' || key == 'L' ) song[currentSong].loop(loopNum);
}

void mousePressed() {
  if (mouseX>playButtonX && mouseX<playButtonX+playButtonWidth && mouseY>playButtonY && mouseY<playButtonY+playButtonHeight ) {
    if ( song[currentSong].isPlaying() ) {
      song[0].pause();
    } else if (song[currentSong].position() == song[currentSong].length()) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
}
