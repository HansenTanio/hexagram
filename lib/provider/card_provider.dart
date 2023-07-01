import 'package:flutter/material.dart';
import 'dart:convert';

class CardProvider extends ChangeNotifier {
  initialData() async {
    setData = card;
  }

  final card = {
    'data': [
      {
        'accountName': 'Lisa',
        'account': '@lalalalisa_m',
        'profileImage': 'lib/images/profile/Lisa Profile.jpg',
        'postImage': 'lib/images/random-photos/6.jpg',
        'postTime': '20 min ago',
        'postDesc': 'Birthday week',
      },
      {
        'accountName': 'New Jeans',
        'account': '@newjeans_official',
        'profileImage': 'lib/images/profile/New Jeans Profile.jpg',
        'postImage': 'lib/images/random-photos/29.jpg',
        'postTime': '35 min ago',
        'postDesc': 'NewJeans \'Zero\' Available Now',
      },
      {
        'accountName': 'Toshiro Nishio',
        'account': '@libertywalk_toshi',
        'profileImage': 'lib/images/profile/Libertywalk Toshi Profile.jpg',
        'postImage': 'lib/images/random-photos/13.jpg',
        'postTime': '50 min ago',
        'postDesc': 'LB WORKS Ferrari F40 in Japan',
      },
      {
        'accountName': 'Kitsune',
        'account': '@kitsunee.__',
        'profileImage': 'lib/images/profile/Kitsune Profile.jpg',
        'postImage': 'lib/images/random-photos/14.jpg',
        'postTime': '1 hour ago',
        'postDesc': '#Kitsune',
      },
      {
        'accountName': 'JISOO',
        'account': '@sooyaaa__',
        'profileImage': 'lib/images/profile/Jisoo Profile.jpg',
        'postImage': 'lib/images/random-photos/7.jpg',
        'postTime': '2 hours ago',
        'postDesc': '久しぶりに日本でBLINKに会えて幸せでした！',
      },
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
