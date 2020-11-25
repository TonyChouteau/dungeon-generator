
//==============================================
// Class that contain a Floor of a Dungeon
//
// @author : Tony Chouteau
//
//==============================================

public class Floor {
  
  private Room[][] rooms;
  private PVector floorSize;
  private PVector roomSize;
  
  Floor(PVector floorSize, PVector roomSize) {
    this.rooms = new Room[int(floorSize.y)][int(floorSize.x)];
    
    this.floorSize = floorSize;
    this.roomSize = roomSize;
    
    this.initialized();
  }
  
  private void initialized() {
    boolean[][] isEmptyTable = new boolean[int(this.floorSize.y)][int(this.floorSize.x)];
    
    for (int i = 0; i < int(this.floorSize.y); i++) {
      for (int j = 0; j < int(this.floorSize.x); j++) {
        isEmptyTable[i][j] = Math.random() > 0.5;
      }
    }
      
    for (int i = 0; i < int(this.floorSize.y); i++) {
      for (int j = 0; j < int(this.floorSize.x); j++) {
        this.makeRooms(j, i, isEmptyTable[i][j]);
      }
    }
  }
  
  private void makeRooms(int x, int y, boolean isEmpty) {
    if (x >= 0 && x < floorSize.x && y >= 0 && y < floorSize.y) {
      this.rooms[x][y] = new Room(this.roomSize, isEmpty);
    }
  }
  
  public void display() {
    for (Room[] rooms : this.rooms) { // z
      for (Room room : rooms) { // x
         room.display();
      }
    }
  }
  
  public void displayLineByLine() {
    for (Room[] rooms : this.rooms) { // z
      for (int i = 0; i < this.roomSize.y; i++) { // x room
        for (Room room : rooms) { // x floor
          room.displayLine(i);
        }
        println();
      }
    }
  }
}
