
import 'package:flutter/foundation.dart';

class DataProvider extends ChangeNotifier {
  String _message = "";

  String get message => _message;

  void setMessage(String newMessage) {
    _message = newMessage;
    notifyListeners();
  }
}
