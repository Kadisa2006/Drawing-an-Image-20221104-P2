//Global Variables
int appWidth, appHeight;
float smallerDimension, largerDimension;
Boolean widthLarger=false, heightLarger=false;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
Boolean nightMode=true;
//
size(420, 630); //Portrait
//Copy Display Orientation
appWidth = width;
appHeight = height;
//
//Aspect Ratio Calculations
//Tommy-Shelby.jpg
int picWidth = 1045;
int picHeight = 1568;
//Image Orientation: Landscape, Portrait, Square
if ( picWidth >= picHeight ) { //True if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else { //False if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}
//
if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
//
//Population
pic = loadImage("../Images Used/Tommy-Shelby.jpg");
imageBackgroundX = appWidth*0;
imageBackgroundY = appHeight*0;
imageBackgroundWidth = appWidth-1;
imageBackgroundHeight = appHeight-1;
//
//Rectangle Layout and Image drawing to CANVAS
rect( imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
//
// if () {} else {} for a Binary Choice, no single IF
if (nightMode == false) tint(255, 128); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
if (nightMode == true) tint(64, 64, 40); //RGB: Night Mode
//
image( pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
