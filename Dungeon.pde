
//==============================================
// Class that contain the Dungeon
//
// @author : Tony Chouteau
//
//==============================================

public class Dungeon {
  
  private Floor[] floors;
  private int dungeonHeight;
  private PVector floorSize;
  private PVector roomSize;
  
  private boolean initialized;
  
  Dungeon(int dungeonHeight, PVector floorSize) {
    this.floors = new Floor[dungeonHeight];
    
    this.dungeonHeight = dungeonHeight;
    this.floorSize = floorSize;
    this.roomSize = new PVector(5, 5);
    
    this.initialized = false;
  }
  
  public void initialized() {
    if (!this.initialized) {
      this.initialized = true;
      for (int i = 0; i < this.dungeonHeight; i++) {
        this.floors[i] = new Floor(this.floorSize, this.roomSize);
      }
    } else {
      println("The Dungeon is already initialized");
    }
  }
  
  //==============================================
  // 
  //==============================================
  
  public void displayToFrame(int floorNumber) {
    this.display(floorNumber, false);
  }
  
  public void displayToConsole(int floorNumber) {
    this.display(floorNumber, true);
  }
  
  private int display(int floorNumber, boolean console) {
    if (!this.initialized) {
      print("Error : The Dungeon is not initialized yet.");
      return 0;
    }
    if (floorNumber < 0 && floorNumber >= dungeonHeight) {
      print("ERROR : Give a valid floorNumber");
      return 0; 
    }
    if (console) {
      this.floors[floorNumber].displayLineByLine();
    } else {
      this.floors[floorNumber].display();
    }
    return 1;
  }
}
