import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.only(left: 8, top: 40),
            child: Image.asset("images/20.png"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 80, left: 15),
            child: Text(
              "Live Tracking",
              style: TextStyle(fontSize: 28, color: Colors.black54),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 20),
            child: Text(
              "Real time tracking of your food on the app                                 once you placed the order",
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
                Navigator.of(context).pushNamed('Meals');
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
