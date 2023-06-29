import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String profileImage;
  final String accountName;
  final String account;
  final String postImage;
  final String postTime;
  final String postDesc;
  final bool theme;

  const MyCard({
    super.key,
    required this.profileImage,
    required this.accountName,
    required this.account,
    required this.postImage,
    required this.postTime,
    required this.postDesc,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 450,
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: theme ? Colors.grey.shade800 : Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(2, 4), // Shadow position
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://img.freepik.com/premium-vector/vertical-background-with-smooth-gradient-vector-illustration_522680-306.jpg',
                  ),
                  radius: 25,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(profileImage),
                    radius: 22,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    accountName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    account,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Container(
                child: Icon(Icons.more_horiz_outlined),
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 300,
                height: 300,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(postImage),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.favorite_border),
                      SizedBox(width: 5),
                      Icon(Icons.chat_bubble_outline),
                      SizedBox(width: 5),
                      Icon(Icons.send_outlined),
                    ],
                  ),
                ),
                Text(
                  postTime,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                )
              ],
            ),
          ),
          Container(
            child: Text(
              postDesc,
            ),
          ),
        ],
      ),
    );
  }
}
