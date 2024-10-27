enum Color { red, green }

// Class Door
class Door {
  String position;
  Door(this.position);
}

// Class roof
class Roof {
  String shape;
  Roof(this.shape);
}

// Class Window
class Floor {
  String floor1;
  Floor(this.floor1);

}

class Window {
  String window1, window2, window3, window4;
  Window(this.window1, this.window2, requested= this.window3, this.window4);
}

// Class Chimey
class Chimney {
  String brick;
  Chimney(this.brick);
}

// Class house
class House {
  String stair;
  List<Window> windows = [];
  Door? door;
  Roof? roof;
  Chimney? chimney;
  House(this.stair);
  addWindow(Window newWindow) {
    windows.add(newWindow);
  }

  setDoor(Door newDoor) {
    door = newDoor;
  }

  setRoof(Roof newRoof) {
    roof = newRoof;
  }

  setChimney(Chimney newChimney) {
    chimney = newChimney;
  }
}

void main() {
  Chimney customChimney = Chimney('brick');
  print('Chimney:${customChimney.brick}');
  Window customwindow = Window('green', 'green', 'red', 'green');
  Door customdoor = Door('center');
  Roof customRoof = Roof('Circle');
  print('Window: $customwindow Door:$customdoor, Roof:$customRoof');
}
