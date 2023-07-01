import 'package:flutter/material.dart';
import 'dart:convert';

class AccountProvider extends ChangeNotifier {
  initialData() async {
    setData = null;
  }

  final hansen = {
    "data": {
      "nama": "Hansen Tanio",
      "profil": "lib/images/profile/Hansen Profile.jpg",
      "username": "hansentanio33",
      "password": "hansen123",
      "photo": [
        'lib/images/random-photos/1.jpg',
        'lib/images/random-photos/25.jpg',
        'lib/images/random-photos/48.jpg',
        'lib/images/random-photos/11.jpg',
        'lib/images/random-photos/4.jpg',
        'lib/images/random-photos/19.jpg',
        'lib/images/random-photos/9.jpg',
        'lib/images/random-photos/18.jpg',
        'lib/images/random-photos/22.jpg',
        'lib/images/random-photos/33.jpg',
        'lib/images/random-photos/32.jpg',
        'lib/images/random-photos/27.jpg',
        'lib/images/random-photos/37.jpg',
        'lib/images/random-photos/43.jpg',
        'lib/images/random-photos/47.jpg',
      ]
    },
  };
  final louis = {
    "data": {
      "nama": "Louis Lie",
      "profil": "lib/images/profile/Louis Profile.jpg",
      "username": "louislie57",
      "password": "louis123",
      "photo": [
        'lib/images/random-photos/20.jpg',
        'lib/images/random-photos/30.jpg',
      ]
    },
  };
  final victor = {
    "data": {
      "nama": "Victor",
      "profil": "lib/images/profile/Victor Profile.jpg",
      "username": "v39309",
      "password": "victor123",
      "photo": [
        'lib/images/random-photos/16.jpg',
        'lib/images/random-photos/31.jpg',
        'lib/images/random-photos/38.jpg',
        'lib/images/random-photos/35.jpg',
        'lib/images/random-photos/34.jpg',
      ]
    },
  };
  dynamic _data;
  dynamic get data => _data;
  set setData(val) {
    var tmp = json.encode(val);
    _data = json.decode(tmp);
    notifyListeners();
  }

  login(username, password) {
    if (username == 'hansentanio33' && password == 'hansen123') {
      setData = hansen;
    } else if (username == 'louislie57' && password == 'louis123') {
      setData = louis;
    } else if (username == 'v39309' && password == 'victor123') {
      setData = victor;
    } else {
      setData = null;
    }
  }
}
