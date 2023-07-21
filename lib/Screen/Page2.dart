import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.only(left: 8, top: 50),
            child: Image.asset("images/19.png"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 80, left: 15),
            child: Text(
              "Fast Delivery",
              style: TextStyle(fontSize: 28, color: Colors.black54),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 20),
            child: Text(
              "Fast food delivery to your home,office                                                   wherever you are",
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
                Navigator.of(context).pushNamed('Page3');
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
