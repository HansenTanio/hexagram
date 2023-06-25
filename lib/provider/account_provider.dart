import 'package:flutter/material.dart';
import 'dart:convert';

class AccountProvider extends ChangeNotifier {
  final hansen = {
    "data": [
      {
        "nama": "Hansen Tanio",
        "profil": "lib/images/profile/Hansen Profile.jpg",
        "username": "hansentanio33",
        "password": "hansen123",
      },
    ]
  };
  final louis = {
    "data": [
      {
        "nama": "Louis Lie",
        "profil": "lib/images/profile/Louis Profile.jpg",
        "username": "louislie57",
        "password": "louis123",
      },
    ]
  };
  final victor = {
    "data": [
      {
        "nama": "Victor",
        "profil": "lib/images/profile/Victor Profile.jpg",
        "username": "v39309",
        "password": "victor123",
      },
    ]
  };
}
