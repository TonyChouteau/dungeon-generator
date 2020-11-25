//==============================================
// 
// Dungeon Generation Algorithm
//
// @creation : 24/11/2020
// @authors  : Tony Chouteau, Sebastien Hert
// @goal     : Generate a dungeon with multiple floors, multiple rooms in each floor. 
//             Each floor are connected and a way should bring from the entrance to end
//             which is located in the last floor.
// 
//==============================================

//==============================================
// Import
//==============================================

//==============================================
// Global Variables
//==============================================
Dungeon dungeon;

//==============================================
// Setup Function
//==============================================
void setup() {
  //size(1700, 1000);
  size(10, 10);
  
  noLoop();
  
  dungeon = new Dungeon(1, new PVector(5, 5));
  dungeon.initialized();
}

//==============================================
// Draw Function
//==============================================
void draw() {
  dungeon.displayToConsole(0);
}
