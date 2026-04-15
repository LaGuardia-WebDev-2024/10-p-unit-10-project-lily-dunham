var starXPos = [];
var starYPos = [];
var star = "🌼";
var starTotal = 100; //number of stars

var beeXPos = [];
var beeYPos = [];
var bee = "🐝";
var beeTotal = 70; //number of bees

var smileyXPos = [];
var smileyYPos = [];
var smiley = "😁";
var smileyTotal = 3; //total smileys
var smileyFound = 0;  //smileys that the player found

var myFlower = ["You are so pretty!", "You are my SUNflower"]; //array for flower text


setup = function() {
   size(600, 450); 

   reset();
}

draw = function(){   

   if(keyPressed){
    if(key == 'r'){
      reset();
    }
   }

  display();
}


mouseClicked = function(){
  check(mouseX, mouseY);
}

var check = function(xClick, yClick){
  for(var i = 0; i < smileyXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, smileyXPos[i], smileyYPos[i])<15){
      smileyXPos.splice(i, 1);
      smileyYPos.splice(i, 1);
      smileyFound++;
    }
  }
}

var display = function(){
  background(100,100,100);

  fill(255,0,0);
  text(myFlower[0],40,40);
  text(myFlower[1],40,50);

  fill (200,200,0);
  textSize(20);
  

  for(var i = 0; i < beeXPos.length; i ++){
    text(bee, beeXPos[i], beeYPos[i]);
  }
  for(var i = 0; i < smileyXPos.length; i ++){
    text(smiley, smileyXPos[i], smileyYPos[i]);
  }
  for(var i = 0; i < starXPos.length; i ++){
    text(star, starXPos[i], starYPos[i]);
  }

  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + smiley + "s   |   " + smiley + " " + smileyFound + "/" + smileyTotal, 0, 425);

  if(smileyFound == smileyTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
  }
}

var reset = function(){
  starXPos = [];
  starYPos = [];
  beeXPos = [];
  beeYPos = [];
  smileyXPos = [];
  smileyYPos = [];
  smileyFound = 0;


  for(var i = 0; i < starTotal; i++){
    starXPos.push(random(0,600));
    starYPos.push(random(0,400));
  }

var i = 0; //while loop
while (i < beeTotal) {
    beeXPos.push(random(0,600));
    beeYPos.push(random(0,400));
    i++;
  }



  for(var i = 0; i < smileyTotal; i++){
    smileyXPos.push(random(0,600));
    smileyYPos.push(random(0,400));
  }
}