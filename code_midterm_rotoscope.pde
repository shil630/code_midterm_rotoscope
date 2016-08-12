// CODE MIDTERM
// Rotoscoping
//
// This sketch loads the assigned frames and plays them back
// Add your own draw code
// Then it saves out the rendered frames
//
// DON'T FORGET TO CHANGE THE VALUE OF THE STUDENTNAME VARIABLE TO YOUR NAME!!

import java.io.File;

File[] tempfiles;
ArrayList<File> files;
PImage image;
String currentFilename;

// EDIT THIS LINE WITH YOUR NAME!
String studentName = "Liang Shi";

int num = 4;
Rectangle[] rectsR;
Rectangle[] rectsL;
RectangleU[] rectsU;
RectangleU[] rectsB;
Line[] linesR;
Line[] linesL;



void setup() {
  files = new ArrayList<File>();

  // get list of files from directory
  File dir = new File(sketchPath() + "/rawFrames");
  tempfiles = dir.listFiles();

  // filter out files that don't end in .png
  for (int i = 0; i < tempfiles.length; i++) {
    String path = tempfiles[i].getAbsolutePath();
    if (path.toLowerCase().endsWith(".png")) {
      files.add(tempfiles[i]);
    }
  }

  // Resize the canvas to full-HD 1080p glory
  size(960, 540);
  pixelDensity(2);
  
  // if that doesn't work, comment it out and uncomment this instead:
  //size(1920, 1080);
  //pixelDensity(1);
  
  
  smooth();
  rectsR = new Rectangle[num];
  rectsL = new Rectangle[num];
  rectsU = new RectangleU[num];
  rectsB = new RectangleU[num];
  linesR = new Line[num];
  linesL = new Line[num];
  for(int i = 0; i < num; i++){
     rectsR[i] = new Rectangle();
     rectsL[i] = new Rectangle();
     rectsU[i] = new RectangleU();
     rectsB[i] = new RectangleU();
     linesR[i] = new Line();
     linesL[i] = new Line();
  }
}

void draw() {
  // DO NOT ALTER THE LINE BELOW
  prepare();

  // BEGIN ADDING YOUR CODE HERE -----
   for(int i = 0; i < num; i++){
     rectsR[i].drawRect();
     rectsR[i].moveRect(true);
     rectsL[i].drawRect();
     rectsL[i].moveRect(false);
     rectsU[i].drawRect();
     rectsU[i].moveRect(true);
     rectsB[i].drawRect();
     rectsB[i].moveRect(false);
     linesR[i].drawLine(true);
     linesL[i].drawLine(false);
   }
  

  // STOP ADDING YOUR CODE HERE -----

  // DO NOT ALTER THE LINES BELOW
  //if (frameCount <= files.size()) { 
  //  export();
  //} if (frameCount == files.size()) {
  //  exit();
  //}
}

// DO NOT ALTER THIS FUNCTION!!
void prepare() {
  String path = files.get(frameCount-1).getAbsolutePath();
  currentFilename = files.get(frameCount-1).getName();

  // Load current file into our PImage variable
  tint(255, 255);
  image = loadImage(path);
  image(image, 0, 0, width, height);
}

// DO NOT ALTER THIS FUNCTION!!
void export() {
  // saves frame without watermark
  saveFrame(sketchPath() + "/outFrames/edited_" + currentFilename);

  int sidePadding = 125;
  int bottomPadding = 50;
  
  textAlign(LEFT);
  textSize(32);
  fill(255);
  text(studentName, sidePadding + 1, height - bottomPadding + 1);
  fill(0);
  text(studentName, sidePadding, height - bottomPadding);

  // saves frame with watermark
  saveFrame(sketchPath() + "/outFrames/watermarked_" + currentFilename);
}