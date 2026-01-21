/*
 Name: Dylan Wright
 Date: March 10th, 2023
 Assignment 5: Multiple choice game
 Purpose: to make a graphic multiple choice game
 */

// declaring variables
int score = 0;
String correct = "";
int i = 0;
int x = 97;
int circleX = 77;
int circleRadius = 15;
int rectX = 62;
int rectYA = 135;
int rectYB = 175;
int rectYC = 215;
int rectYD = 255;
int rectXS = 280;
int rectYS = 350;
int rectXYes = 240;
int rectXNo = 355;
int rectYYes = 255;
int rectXCon = 280;
int rectYCon = 260;
int rectXStart = 290;
int rectYStart = 250;
boolean submit = false;
boolean start = true;

// Declaring arrays
String [] question = new String [16];
String [] A = new String [16];
String [] B = new String [16];
String [] C = new String [16];
String [] D = new String [16];
String [] answer = new String [15];
String response = "";

void setup() {
  // Seting up screen
  size (640, 480);
  textSize (18);

  // Making questions:
  
  // Question #1
  question [0] = "Who has the most points of all time?";
  A [0] = "Bobby Orr";
  B [0] = "Wayne Gretzky";
  C [0] = "Mario Lemieux";
  D [0] = "Conor McDavid";
  answer [0] = "b";

  // Question #2
  question [1] = "Who, that is still playing, has the most goals?";
  A [1] = "Sidney Crosby";
  B [1] = "Conor McDavid";
  C [1] = "Alex Ovechkin";
  D [1] = "Patrick Kane";
  answer [1] = "c";


  // Question #3
  question [2] = "Who was the first player to score 50 goals in a season?";
  A [2] = "Booby Orr";
  B [2] = "Bobby Hull";
  C [2] = "Bernie Geoffrion";
  D [2] = "Maurice Richard";
  answer [2] = "d";

  // Question #4
  question [3] = "Who was the first goaltender to score during a playoff game?";
  A [3] = "Martin Brodeur";
  B [3] = "Patrick Roy";
  C [3] = "Ron Hextall";
  D [3] = "Chris Osgood";
  answer [3] = "c";

  // Question #5
  question [4] = "How old was Gordie Howe when he played his final NHL game?";
  A [4] = "52";
  B [4] = "50";
  C [4] = "54";
  D [4] = "56";
  answer [4] = "a";

  // Question #6
  question [5] = "How many Stanley Cups did the Islanders win during the 1980s?";
  A [5] = "1";
  B [5] = "2";
  C [5] = "5";
  D [5] = "4";
  answer [5] = "d";

  // Question #7
  question [6] = "How many teams are currently in the NHL?";
  A [6] = "31";
  B [6] = "32";
  C [6] = "35";
  D [6] = "34";
  answer [6] = "b";

  // Question #8
  question [7] = "What year was the NHL founded?";
  A [7] = "1917";
  B [7] = "1896";
  C [7] = "1921";
  D [7] = "1905";
  answer [7] = "a";

  // Question #9
  question [8] = "Who won the Standley Cup in 2020?";
  A [8] = "Dallas Start";
  B [8] = "Tampa Bay Lightning";
  C [8] = "Ottawa Senators";
  D [8] = "Toronto Maple Leafs";
  answer [8] = "b";

  // Question #10
  question [9] = "Who won the Standley Cup in 2021?";
  A [9] = "Dallas Start";
  B [9] = "Tampa Bay Lightning";
  C [9] = "Ottawa Senators";
  D [9] = "Toronto Maple Leafs";
  answer [9] = "b";

  // Question #11
  question [10] = "How many teams have never won the Stanley Cup?";
  A [10] = "13";
  B [10] = "12";
  C [10] = "11";
  D [10] = "10";
  answer [10] = "c";

  // Question #12
  question [11] = "How many times did the Montreal Canadiens win the Stanley Cup?";
  A [11] = "23";
  B [11] = "15";
  C [11] = "7";
  D [11] = "24";
  answer [11] = "d";

  // Question #13
  question [12] = "Which of these teams are NOT an original six team?";
  A [12] = "Montreal Canadians";
  B [12] = "New York Islanders";
  C [12] = "New York Rangers";
  D [12] = "Toronto Maple Leafs";
  answer [12] = "b";

  // Question #14
  question [13] = "How many seasons did Wayne Gretzky play?";
  A [13] = "20";
  B [13] = "21";
  C [13] = "22";
  D [13] = "23";
  answer [13] = "a";

  // Question #15
  question [14] = "How many Stanley cups did Wayne Gretzky win?";
  A [14] = "6";
  B [14] = "5";
  C [14] = "4";
  D [14] = "3";
  answer [14] = "c";
}


void draw ()
{
  if (start == true) {
    // If this is the start of the game
    
    background (255, 255, 255);
    
    // Printing retangles to make it look nice
    fill (200, 174, 129);
    rect (220, 175, 210, 60);
    rect (rectXStart, rectYStart, 60, 30);
    
    // Printing instrcutions for user
    fill (0);
    text ("Welcome to my game", 240, 200);
    text ("Press start to play", 240, 220);
    text ("Start", 300, 270);
    
  } else {
    // If it's not the start of the game
    
    background (255, 255, 255);
    
    // Drawing multiple choice rectangles
    fill (200, 174, 129);
    rect (rectX, rectYA, 280, 40);
    rect (rectX, rectYB, 280, 40);
    rect (rectX, rectYC, 280, 40);
    rect (rectX, rectYD, 280, 40);
    rect (rectXS, rectYS, 80, 40);

    if (response == "a") {
      // If they clicked on option A
      
      // Filling it a different colour to show they clickedd on it
      fill (245, 245, 221);
      rect (rectX, rectYA, 280, 40);
    }
    
    if (response == "b") {
      // If they clicked on option B
      
      // Filling it a different colour to show they clickedd on it
      fill (245, 245, 221);
      rect (rectX, rectYB, 280, 40);
    }
    
    if (response == "c") {
      // If they clicked on option C
      
      // Filling it a different colour to show they clickedd on it
      fill (245, 245, 221);
      rect (rectX, rectYC, 280, 40);
    }
    
    if (response == "d") {
      // If they clicked on option D
      
      // Filling it a different colour to show they clickedd on it
      fill (245, 245, 221);
      rect (rectX, rectYD, 280, 40);
    }

    if (submit == true) {
      // If they pressed on the submit button
      
      if (response == answer [i]) {
        // if they answered correctly
        
        // Putting rectangles around text to make it look better
        background (255, 255, 255);
        fill (200, 174, 129);
        rect (rectXCon, rectYCon, 100, 50);
        rect (280, 178, 100, 50);
        
        // Printing to tell them they got the right answer, their score and a button to continue
        fill (0);
        text ("Correct", 300, 200);
        text ("Continue", 300, 290);
        text ("Score: " + str (score + 1), 300, 220);
      } else {
        // If they got the wrong answer
        
        // Putting rectangles around text to make it look better
        background (255, 255, 255);
        fill (200, 174, 129);
        rect (rectXCon, rectYCon, 100, 50);
        rect (225, 175, 210, 70);
        
        // Printing to tell them they got the wrong answer, their score, the right answer and a button to continue
        fill (0);
        text ("Incorrect", 300, 200);
        text ("The correct answer was: " + answer [i].toUpperCase(), 230, 220);
        text ("Score: " + str (score), 300, 240);
        text ("Continue", 300, 290);
      }
    }
    if (i > 14) {
      // If they ran out of questions
      
      // Putting rectangles around text to make it look better
      background (255, 255, 255);
      fill (200, 174, 129);
      rect (240, 175, 230, 80);
      rect (rectXYes, rectYYes, 115, 40); // Yes rect
      rect (rectXNo, rectYYes, 115, 40); // No rect
      
      // Telling them the game is over and asking if they want to play again
      fill (0);
      text ("Game Over", 300, 200);
      text ("Score: " + str (score), 300, 220);
      text ("Would you like to play again?", 250, 240);
      text ("Yes", 270, 280);
      text ("No", 400, 280);

    } else if (submit == false) {
      // If they are still choosing
      
      // Drawing multiple choice circles
      fill (0);
      ellipse (circleX, 154, circleRadius, circleRadius);
      ellipse (circleX, 194, circleRadius, circleRadius);
      ellipse (circleX, 234, circleRadius, circleRadius);
      ellipse (circleX, 274, circleRadius, circleRadius);

      // Printing the questions to the screen with submit button and score
      text (question [i], 70, 120);
      text (A [i], x, 160);
      text (B [i], x, 200);
      text (C [i], x, 240);
      text (D [i], x, 280);
      text ("Submit", 290, 375);
      text ("Score: " + str(score), 30, 50);
    }
  }
}
void mouseClicked ()
{
// If they clicked on the mouse

  if ((mouseX - rectXStart) < 60 && (mouseX - rectXStart) > 0 && (mouseY - rectYStart) < 30 && (mouseY - rectYStart) > 0 && start == true) {
    // If they pressed the start button and want to start the game
    
    start = false;
  }
  
  if ((mouseX - rectX) < 280 && (mouseX - rectX) > 0 && (mouseY - rectYA) < 40 && (mouseY - rectYA) > 0 && submit == false) {
    // If they clickded on the multiple choice a
   
    response = "a";
  }
  
  if ((mouseX - rectX) < 280 && (mouseX - rectX) > 0 && (mouseY - rectYB) < 40 && (mouseY - rectYB) > 0 && submit == false) {
    // If they clickded on the multiple choice b
    
    response = "b";
  }
  
  if ((mouseX - rectX) < 280 && (mouseX - rectX) > 0 && (mouseY - rectYC) < 40 && (mouseY - rectYC) > 0 && submit == false) {
    // If they clickded on the multiple choice c
    
    response = "c";
  }
  
  if ((mouseX - rectX) < 280 && (mouseX - rectX) > 0 && (mouseY - rectYD) < 40 && (mouseY - rectYD) > 0 && submit == false) {
    // If they clickded on the multiple choice a
    
    response = "d";
  }
  
  if ((mouseX - rectXS) < 80 && (mouseX - rectXS) > 0 && (mouseY - rectYS) < 40 && (mouseY - rectYS) > 0 && response != "") {
    // If they clickded on the submit button
    
    submit = true;
  }
  
  if ((mouseX - rectXYes) < 115 && (mouseX - rectXYes) > 0 && (mouseY - rectYYes) < 40 && (mouseY - rectYYes) > 0 && i > 14) {
    // if they want to play again and clicked on the yes button
    
    score = 0;
    i = 0;
  }
  
  if ((mouseX - rectXNo) < 115 && (mouseX - rectXNo) > 0 && (mouseY - rectYYes) < 40 && (mouseY - rectYYes) > 0 && i > 14) {
    // If they clicked on the no button and don't want to play
    
    exit ();
  }
  
  if ((mouseX - rectXCon) < 100 && (mouseX - rectXCon) > 0 && (mouseY - rectYCon) < 50 && (mouseY - rectYCon) > 0 && submit == true) {
    // If they pressed on the submit button
    
    if (response == answer [i]) {
      // If they have the right response
      
      score ++; // Increasing score
    }
    
    submit = false;
    i ++;
    response = "";
  }
}
