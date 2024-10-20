void main() {
  MyDuration duration1 = MyDuration.fromHours(2);
  MyDuration duration2 = MyDuration.fromMinutes(30);

  print('Duration 1 in milliseconds: ${duration1.milliseconds}');
  print('Duration 2 in milliseconds: ${duration2.milliseconds}');

  // Addition
  MyDuration addedDuration = duration1 + duration2;
  print('Added duration in milliseconds: ${addedDuration.milliseconds}');

  // Subtraction
  MyDuration subtractedDuration = duration1 - duration2;
  print('Subtracted duration in milliseconds: ${subtractedDuration.milliseconds}');

  // Comparison
  print('Is Duration 1 greater than Duration 2? ${duration1.isGreaterThan(duration2)}');
}

class MyDuration {
  final int _milliseconds;
  MyDuration(int days, int hours, int minutes, int seconds)
      : _milliseconds = (((days * 24 + hours) * 60 + minutes) * 60 + seconds) * 1000;

  // Getters
  int get milliseconds => _milliseconds;
  MyDuration.fromHours(int hours) : _milliseconds = hours * 3600000;

  MyDuration.fromMinutes(int minutes) : _milliseconds = minutes * 60000;

  MyDuration.fromSeconds(int seconds) : _milliseconds = seconds * 1000;

  // Conversion methods
  double toSeconds() {
    return _milliseconds / 1000;
  }

  double toMinutes() {
    return _milliseconds / 60000;
  }

  double toHours() {
    return _milliseconds / 3600000;
  }

  // Addition operator
  MyDuration operator +(MyDuration other) {
    return MyDuration.fromMilliseconds(_milliseconds + other._milliseconds);
  }

  // Subtraction operator
  MyDuration operator -(MyDuration other) {
    if (_milliseconds < other._milliseconds) {
      throw ArgumentError("Resulting duration cannot be negative.");
    }
    return MyDuration.fromMilliseconds(_milliseconds - other._milliseconds);
  }

  // Comparison operator
  bool isGreaterThan(MyDuration other) {
    return _milliseconds > other._milliseconds;
  }
  MyDuration.fromMilliseconds(int milliseconds) : _milliseconds = milliseconds;
}




//   // Display the duration in a readable format
//   @override
//   String toString() {
//     int seconds = (_milliseconds / 1000).round();
//     int minutes = (seconds / 60).floor();
//     seconds = seconds % 60;
//     int hours = (minutes / 60).floor();
//     minutes = minutes % 60;
//     return '$hours hours, $minutes minutes, $seconds seconds';
//   }
// }

// void main() {
//   MyDuration duration1 = MyDuration.fromHours(3); // 3 hours
//   MyDuration duration2 = MyDuration.fromMinutes(45); // 45 minutes
//   print(duration1 + duration2); // 3 hours, 45 minutes, 0 seconds
//   print(duration1>duration2); //true

//   try {
//     print(duration2 - duration1); // This will throw an exception
//   } catch (e) {
//     print(e);
//   }

