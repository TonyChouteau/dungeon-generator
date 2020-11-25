
//==============================================
// Class that contain a Room of a Floor
//
// @author : Tony Chouteau
//
//==============================================

public class Room {
  
  private char[][] blocks;
  private PVector roomSize;
  private boolean isEmpty;
  
  Room(PVector roomSize, boolean isEmpty) {
    this.blocks = new char[int(roomSize.y)][int(roomSize.x)];
    
    this.roomSize = roomSize;
    this.isEmpty = isEmpty;
    
    this.initiliazed();
  }
  Room(PVector roomSize) {
    this.blocks = new char[int(roomSize.y)][int(roomSize.x)];
    
    this.roomSize = roomSize;
    this.isEmpty = false;
    
    this.initiliazed();
  }
  
  private void initiliazed() {
    for (int i = 0; i < this.roomSize.y; i++) {
      for (int j = 0; j < this.roomSize.x; j++) {
        if (isEmpty) {
          this.blocks[i][j] = '.';
        } else {
          if (i == 0 || j == 0 || i == this.roomSize.y-1 || j == this.roomSize.x-1) {
            this.blocks[i][j] = 'O';
          } else {
            this.blocks[i][j] = '+';
          }
        }
      }
    }
  }
  
  public void display() {
    for (char[] blocks : this.blocks) { 
      for (char block : blocks) {
        print(block+" ");
      }
      println();
    }
  }
  
  public void displayLine(int line) {
    for (char block : this.blocks[line]) { // x
      print(block+" ");
    }
  }
}
