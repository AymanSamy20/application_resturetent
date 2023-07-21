import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.only(left: 8, top: 50),
            child: Image.asset("images/18.png"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 90, left: 15),
            child: Text(
              "Find Food You Love",
              style: TextStyle(fontSize: 28, color: Colors.black54),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 20),
            child: Text(
              "Discover the best foods from over 1,000                                      restaurants and fast delivery to your doorstep",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('Page2');
              },
              child: Text(
                "Next",
                style: TextStyle(fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(100)),
                  ),
                  primary: const Color.fromARGB(255, 255, 106, 0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 150, vertical: 20)),
            ),
          ),
        ],
      ),
    );
  }
}
