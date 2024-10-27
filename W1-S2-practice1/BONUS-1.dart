import 'dart:io';

enum Direction { north, east, south, west }

class Robot {
  int x;
  int y;
  Direction direction;

  Robot(this.x, this.y, this.direction);

  void turnRight() {
    direction = Direction.values[(direction.index + 1) % 4];
  }

  void turnLeft() {
    direction = Direction.values[(direction.index - 1 + 4) % 4];
  }

  void moveForward() {
    switch (direction) {
      case Direction.north:
        y++;
        break;
      case Direction.east:
        x++;
        break;
      case Direction.south:
        y--;
        break;
      case Direction.west:
        x--;
        break;
    }
  }

  void executeInstructions(String instructions) {
    for (var instruction in instructions.split('')) {
      switch (instruction) {
        case 'R':
          turnRight();
          break;
        case 'L':
          turnLeft();
          break;
        case 'A':
          moveForward();
          break;
        default:
          print('Invalid instruction: $instruction');
      }
    }
  }

  void printPosition() {
    print("Final position: { $x, $y }");
    print("Facing: ${direction.name.toUpperCase()}");
  }
}

void main() {
  print("Enter initial X coordinate:");
  int x = int.parse(stdin.readLineSync()!);

  print("Enter initial Y coordinate:");
  int y = int.parse(stdin.readLineSync()!);

  print("Enter initial direction (NORTH, EAST, SOUTH, WEST):");
  String dirInput = stdin.readLineSync()!.toUpperCase();
  Direction direction;

  switch (dirInput) {
    case 'NORTH':
      direction = Direction.north;
      break;
    case 'EAST':
      direction = Direction.east;
      break;
    case 'SOUTH':
      direction = Direction.south;
      break;
    case 'WEST':
      direction = Direction.west;
      break;
    default:
      print('Invalid direction! Defaulting to NORTH.');
      direction = Direction.north;
  }

  Robot robot = Robot(x, y, direction);

  print("Enter movement instructions (R = turn right, L = turn left, A = advance):");
  String instructions = stdin.readLineSync()!.toUpperCase();

  robot.executeInstructions(instructions);
  robot.printPosition();
}


