import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberOfSongs = 4;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int currentSong = 0;
int loopNum = 1;
color white = #FFFFFF;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float playButtonX2, playButtonY2, playButtonWidth2, playButtonHeight2;
float playButtonX3, playButtonY3, playButtonWidth3, playButtonHeight3;
float playButtonX4, playButtonY4, playButtonWidth4, playButtonHeight4;
float playButtonX5, playButtonY5, playButtonWidth5, playButtonHeight5;
float playButtonX6, playButtonY6, playButtonWidth6, playButtonHeight6;
float songButtonX, songButtonY, songButtonWidth, songButtonHeight;
float songButtonX2, songButtonY2, songButtonWidth2, songButtonHeight2;
float songButtonX3, songButtonY3, songButtonWidth3, songButtonHeight3;
float imageX, imageY, imageWidth, imageHeight;
float imageX2, imageY2, imageWidth2, imageHeight2;
float imageX3, imageY3, imageWidth3, imageHeight3;
float quitX, quitY, quitWidth, quitHeight;
float bottomX, bottomY, bottomWidth, bottomHeight;
float sideX, sideY, sideWidth, sideHeight;
PFont titleFont;
color grey = #99A3A4, blue = #6699ff;
PImage pic, pic2, pic3;
int imageWidthRatio, imageWidthRatio2, imageWidthRatio3;
float imageHeightRatio, imageHeightRatio2, imageHeightRatio3;

void setup() {
  size(1920, 1080);
  minim = new Minim(this);
  song[0] = minim.loadFile("Mess Call - USAF Heritage of America Band .mp3");
  song[1] = minim.loadFile("The_Sleeping_Prophet.mp3");
  song[2] = minim.loadFile("Forget Me Not - Patrick Patrikios.mp3");
  song[3] = minim.loadFile("Pen Clicking .mp3");
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
  playButtonX = width*1/16;
  playButtonY = height*13/16;
  playButtonWidth = width*2/16;
  playButtonHeight = height*2/16;
  playButtonX2 = width*4/16;
  playButtonY2 = height*13/16;
  playButtonWidth2 = width*2/16;
  playButtonHeight2 = height*2/16;
  playButtonX3 = width*7/16;
  playButtonY3 = height*13/16;
  playButtonWidth3 = width*1/16;
  playButtonHeight3 = height*2/16;
  playButtonX4 = width*8/16;
  playButtonY4 = height*13/16;
  playButtonWidth4 = width*1/16;
  playButtonHeight4 = height*2/16;
  playButtonX5 = width*10/16;
  playButtonY5 = height*13/16;
  playButtonWidth5 = width*2/16;
  playButtonHeight5 = height*2/16;
  playButtonX6 = width*13/16;
  playButtonY6 = height*13/16;
  playButtonWidth6 = width*2/16;
  playButtonHeight6 = height*2/16;
  songButtonX = width*1/32;
  songButtonY = height*2/16;
  songButtonWidth = width*1/16;
  songButtonHeight = height*2/16;
  songButtonX2 = width*1/32;
  songButtonY2 = height*5/16;
  songButtonWidth2 = width*1/16;
  songButtonHeight2 = height*2/16;
  songButtonX3 = width*1/32;
  songButtonY3 = height*8/16;
  songButtonWidth3 = width*1/16;
  songButtonHeight3 = height*2/16;
  //
  quitX = width*15/16;
  quitY = height*0;
  quitWidth = width*1;
  quitHeight = height*1/16;
  //
  bottomX = width*0;
  bottomY = height*3/4;
  bottomWidth = width*1; 
  bottomHeight = height*1/4;
  sideX = width*0;
  sideY = height*0;
  sideWidth = width*1/8;
  sideHeight = height*3/4;
  //
  imageX = width*1/5;
  imageY = height*0;
  imageWidth = width*4/6;
  imageHeight = height*3/5;
  //
  titleFont = createFont ("Centaur", 48);
  //
  pic = loadImage("maxresdefault.jpg");
  imageWidthRatio = 1280/1280;
  imageHeightRatio = 720/720.0;
  imageX = width*1/5;
  imageY = height*0;
  imageWidth = width*4/6;
  imageHeight = height*3/5;
  pic2 = loadImage("344d7e7443fa675acdfe7057a9219def.jpg");
  imageWidthRatio2 = 955/955;
  imageHeightRatio2 = 500/500.0;
  imageX2 = width*1/5;
  imageY2 = height*0;
  imageWidth2 = width*4/6;
  imageHeight2 = height*3/5;
  pic3 = loadImage("forget-me-nots.jpg");
  imageWidthRatio3 = 1024/1024;
  imageHeightRatio3 = 683/683.0;
  imageX3 = width*1/5;
  imageY3 = height*0;
  imageWidth3 = width*4/6;
  imageHeight3 = height*3/5;
}

void draw() {
  background(grey);
  fill(blue);
  rect(bottomX, bottomY, bottomWidth, bottomHeight);
  rect(sideX, sideY, sideWidth, sideHeight);
  fill(grey);
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  rect(playButtonX2, playButtonY2, playButtonWidth2, playButtonHeight2);
  rect(playButtonX3, playButtonY3, playButtonWidth3, playButtonHeight3);
  rect(playButtonX4, playButtonY4, playButtonWidth4, playButtonHeight4);
  rect(playButtonX5, playButtonY5, playButtonWidth5, playButtonHeight5);
  rect(playButtonX6, playButtonY6, playButtonWidth6, playButtonHeight6);
  rect(songButtonX, songButtonY, songButtonWidth, songButtonHeight);
  rect(songButtonX2, songButtonY2, songButtonWidth2, songButtonHeight2);
  rect(songButtonX3, songButtonY3, songButtonWidth3, songButtonHeight3);
  fill(#ff0000);
  rect(quitX, quitY, quitWidth, quitHeight);
  //
  fill(0);
  textAlign (CENTER, CENTER);
  textFont(titleFont, 50);
  text("Play/Pause", width*1/16, height*13/16, width*2/16, height*2/16);
  text("Stop", width*4/16, height*13/16, width*2/16, height*2/16 );
  text("<", width*7/16, height*13/16, width*1/16, height*2/16 );
  text(">", width*8/16, height*13/16, width*1/16, height*2/16 );
  text("Loop", width*13/16, height*13/16, width*2/16, height*2/16 );
  text("Next", width*10/16, height*13/16, width*2/16, height*2/16);
  text("X", width*15/16, height*0, width*1, height*1/16);
  text("#1", width*1/32, height*2/16, width*1/16, height*2/16);
  text("#2", width*1/32, height*5/16, width*1/16, height*2/16);
  text("#3", width*1/32, height*8/16, width*1/16, height*2/16);
  if ( song[0].isPlaying() ) {
    text("Currently Playing: Mess Call", width*1/3, height*1/2, width*1/3, height*1/3);
    image(pic, imageX, imageY, imageWidth, imageHeight);
  }
  if ( song[1].isPlaying() ) {
    text("Currently Playing: The Sleeping Prophet", width*1/3, height*1/2, width*1/3, height*1/3);
    image(pic2, imageX2, imageY2, imageWidth2, imageHeight2);
  }
  if ( song[2].isPlaying() ) {
    text("Currently Playing: Forget Me Not", width*1/3, height*1/2, width*1/3, height*1/3);
    image(pic3, imageX3, imageY3, imageWidth3, imageHeight3);
  }
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
    song[3].play();
    song[3].rewind();
    if ( song[currentSong].isPlaying() ) {
      song[0].pause();
    } else if (song[currentSong].position() == song[currentSong].length()) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
  if (mouseX>playButtonX2 && mouseX<playButtonX2+playButtonWidth2 && mouseY>playButtonY2 && mouseY<playButtonY2+playButtonHeight2 ) {
    song[3].play();
    song[3].rewind();
    song[currentSong].pause();
    song[currentSong].rewind();
  }
  if (mouseX>playButtonX3 && mouseX<playButtonX3+playButtonWidth3 && mouseY>playButtonY3 && mouseY<playButtonY3+playButtonHeight3 ) {
    song[3].play();
    song[3].rewind();
    song[currentSong].skip(-5000);
  }
  if (mouseX>playButtonX4 && mouseX<playButtonX4+playButtonWidth4 && mouseY>playButtonY4 && mouseY<playButtonY4+playButtonHeight4 ) {
    song[3].play();
    song[3].rewind();
    song[currentSong].skip(5000);
  }
  if (mouseX>playButtonX5 && mouseX<playButtonX5+playButtonWidth5 && mouseY>playButtonY5 && mouseY<playButtonY5+playButtonHeight5 ) {
    song[3].play();
    song[3].rewind();
    if ( currentSong == 0 ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      currentSong = 1;
      song[currentSong].play();
    }
    else if ( currentSong == 1 ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      currentSong = 2;
      song[currentSong].play();
    }
    else {
      song[currentSong].pause();
      song[currentSong].rewind();
      currentSong = 0;
      song[currentSong].play();
    }
  }
  if (mouseX>playButtonX6 && mouseX<playButtonX6+playButtonWidth6 && mouseY>playButtonY6 && mouseY<playButtonY6+playButtonHeight6 ) {
    song[3].play();
    song[3].rewind();
    song[currentSong].loop(100);
  }
  if (mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight ) {
    song[3].play();
    song[3].rewind();
    {exit();}
  }
  if (mouseX>songButtonX && mouseX<songButtonX+songButtonWidth && mouseY>songButtonY && mouseY<songButtonY+songButtonHeight ) {
    song[3].play();
    song[3].rewind();
    song[currentSong].pause();
    song[currentSong].rewind();
    currentSong = 0;
    song[currentSong].play();
  }
  if (mouseX>songButtonX2 && mouseX<songButtonX2+songButtonWidth2 && mouseY>songButtonY2 && mouseY<songButtonY2+songButtonHeight2 ) {
    song[3].play();
    song[3].rewind();
    song[currentSong].pause();
    song[currentSong].rewind();
    currentSong = 1;
    song[currentSong].play();
  }
  if (mouseX>songButtonX3 && mouseX<songButtonX3+songButtonWidth3 && mouseY>songButtonY3 && mouseY<songButtonY3+songButtonHeight3 ) {
   song[3].play();
   song[3].rewind();
   song[currentSong].pause();
   song[currentSong].rewind();
   currentSong = 2;
   song[currentSong].play();
  }
}
