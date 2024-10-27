import 'dart:io';

bool areBracketsBalanced(String input) {

  List<String> stack = [];

  Map<String, String> matchingBrackets = {
    '(': ')',
    '{': '}',
    '[': ']',
  };

  for (var char in input.split('')) {

    if (matchingBrackets.containsKey(char)) {
      stack.add(char);
    } 

    else if (matchingBrackets.values.contains(char)) {
      if (stack.isEmpty || matchingBrackets[stack.removeLast()] != char) {
        return false; // Not balanced
      }
    }
  }
  
  return stack.isEmpty;
}

void main() {
  print("Enter a string to check for balanced brackets:");
  String input = stdin.readLineSync()!;
  
  if (areBracketsBalanced(input)) {
    print("Balanced");
  } else {
    print("Not balanced");
  }
}