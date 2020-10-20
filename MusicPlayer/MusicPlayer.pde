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
int loopNum = 1;

color white = #FFFFFF;

void setup() {
  size(500, 600);
  minim = new Minim(this);
  song[0] = minim.loadFile("Mess Call - USAF Heritage of America Band .mp3");
  song[1] = minim.loadFile("The_Sleeping_Prophet.mp3");
  song[2] = minim.loadFile("Forget Me Not - Patrick Patrikios.mp3");
  songMetaData[0] = song[0].getMetaData();
  songMetaData[1] = song[1].getMetaData();
  songMetaData[2] = song[2].getMetaData();
  //
  println("Start of Console");
  println("Click the Canvas to finish starting App");
  println("Press 1, 2, or 3 respectively to play a song");
  println("Press P to Pause");
  println("Press S to Stop and Rewind");
  //
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
  println("Encoded:", songMetaData[currentSong].encode() );
  println(":", songMetaData[currentSong].);
  
}

void draw() {
  
}

void keyPressed() { 
  if (key == '1' || key == '!') {
    song[0].play();
  }
  //
  if (key == 'p' || key =='P'){
    song[0].pause();
  }
  //
  if ( song[0].position() == song[0].length() ) {
    song[1].play();
  }
  //
  if (key == 's' || key == 'S') {
    song[0].pause();
    song[0].rewind();
  }
  //
  if (key == '2' || key == '2') {
    song[1].play();
  }
  //
  if (key == 'p' || key =='P'){
    song[1].pause();
  }
  //
  if ( song[1].position() == song[1].length() ) {
    song[2].play();
  }
  //
  if (key == 's' || key == 'S') {
    song[1].pause();
    song[1].rewind();
  }
    if (key == '3' || key == '3') {
    song[2].play();
  }
  //
  if (key == 'p' || key =='P'){
    song[2].pause();
  }
  //
  if ( song[2].position() == song[2].length() ) {
    song[0].play();
  }
  //
  if (key == 's' || key == 'S') {
    song[2].pause();
    song[2].rewind();
  }
}

void mousePressed() {
  
}
