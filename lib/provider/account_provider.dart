import 'package:flutter/material.dart';
import 'dart:convert';

class AccountProvider extends ChangeNotifier {
  final user = {
    "data": [
      {
        "username": "hansentanio33",
        "password": "hansen123",
      },
      {
        "username": "louislie57",
        "password": "louis123",
      },
      {
        "username": "v39309",
        "password": "victor123",
      }
    ]
  };

  dynamic _data;
  dynamic get data => _data;
  set setData(val) {
    var tmp = json.encode(val);
    _data = json.decode(tmp);

    notifyListeners();
  }
}
