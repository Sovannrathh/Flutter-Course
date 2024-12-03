import 'package:flutter/material.dart';
import 'W8-S2/1-Demo-List-View/main.dart' as w8s2listview;
import 'W8-S2/2-Model-Textfiled-state/main.dart' as w8s2state;
import 'W8-S2/3-withcontroller/main.dart' as w8s2controller;
import 'W8-S2/Practice/EX-1-2-3/main.dart' as w8s2excercise123;
import 'W9-S1/inputValidation/main.dart' as w9s1inputValidation;

void main() {
  const appToRun = 'w8s2listview';
  if (appToRun == 'w8s2listview') {
    w8s2listview.main();
  }
  if (appToRun == 'w8s2state') {
    w8s2state.main();
  }
  if (appToRun == 'w8s2controller') {
    w8s2controller.main();
  }
  if (appToRun == 'w8s2excercise123') {
    w8s2excercise123.main();
  }
  if (appToRun == 'w9s1inputValidation') {
    w9s1inputValidation.main();
  }
}
