 import 'package:flutter/material.dart';

class EventProvider extends ChangeNotifier {
  int totalBookings = 500;
  int attended = 342;
  int remaining = 158;
  int earnings = 120000;

  void markAsAttended() {
    attended++;
    remaining--;
    notifyListeners();
  }
}