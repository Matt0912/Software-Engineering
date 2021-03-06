// We're going to draw a circle which moves across 
// the screen. Here we create two variables to store
// a position.  Because they are global - declared 
// outside of setup() and loop() - we can think 
// of them as a permanent place to store numbers.
float x,y;

// This code runs once, when you run the sketch.
void setup() {
  
  // Set the size of the application window.
  // All dimensions in processing are pixels
  size( 800, 800 );
  
  
  // Set the background to black (0).
  // Try other colours.  You can also use
  // html style hex (e.g. #00FF0A )
  // or RGB (e.g, 255,200,100 )
  background( 0 );
  
  
  // Here we set the initial position as
  // the middle of the screen by referencing the values
  // we set with size()
  x = width/2;
  y = height/2;
  
}


// This code is called iteratively (again and again)
// once setup() has finished.
void draw() {
  
  // Set the background to black.  This is like
  // painting over anything drawn previously.
  // Try removing this!
  background(0);
  
  // Here the outline of anything drawn will 
  // be maximum red, no green or blue.
  stroke( 255, 0, 0 );
  
  // Here, we make outlines a bit thicker
  strokeWeight( 2 );
  
  // Here, we set the fill colour to be 
  // a middle grey value.
  // Note that, we could also use noFill()
  // to make the fill transparent.
  fill( 128 );
  
  // Draw a circle at x,y, with a width and height
  // of 50.  Check out help->reference for more 
  // information on elipse and other drawing functions.
  ellipse( x, y, 50, 50 );
  
  // Here, we adjust x to be 10 pixels more.
 
  // We check if X has become bigger than the width
  // of our application, and if so, set it back to 0
  if( x < 0 ) x = width;
  if( x > width ) x = 0;
  if (y > height) y = 0;
  if (y < 0) y = height;

}

void mousePressed() {
  if( mouseButton == RIGHT ) {
    
  } else if( mouseButton == LEFT ) {
    x = mouseX;
    y = mouseY;
  }
}

void mouseReleased() {
  
}

void mouseDragged() {
  
}

void keyPressed() {
  
  // Run some code if one of these keys is pressed.
  // Note, we check for lower and upper case here by
  // using a logical OR statement ||
  if( key == 'w' || key == 'W' ) {
    y = y - 10;
    
  } else if( key == 's' || key == 'S' ) {
    y = y + 10;
    
  } else if( key == 'a' || key == 'A' ) {
    x = x - 10;
    
  } else if( key == 'd' || key == 'D' ) {
    x = x + 10;
    
  }   // etc
  
}

void keyReleased() {
  
}
