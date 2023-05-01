import 'package:flutter/material.dart';
import 'package:hexagram/components/my_searchphoto.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  fillColor: Colors.grey[250],
                  filled: true,
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey[500]),
                ),
              ),
            ),
            for (var i = 0; i < 25; i++)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var j = 1; j < 5; j++)
                    MySearchPhoto(
                      imageLink: 'lib/images/random-photos/${i + j}.jpg',
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
