import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class LatestOffers extends StatefulWidget {
  LatestOffers({Key? key}) : super(key: key);

  @override
  State<LatestOffers> createState() => _LatestOffersState();
}

class _LatestOffersState extends State<LatestOffers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.white,
        color: Colors.white,
        height: 75,
        backgroundColor: Color.fromARGB(255, 255, 106, 0),
        items: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              size: 35,
            ),
            onPressed: () {},
            color: Colors.orange,
          ),
          Icon(
            Icons.lock,
            size: 35,
            color: Colors.orange,
          ),
          Icon(
            Icons.home,
            size: 35,
            color: Colors.orange,
          ),
          Icon(
            Icons.person,
            size: 35,
            color: Colors.orange,
          ),
          Icon(
            Icons.menu_open,
            size: 35,
            color: Colors.orange,
          )
        ],
        index: 2,
        onTap: (index) {
          debugPrint("crunnent Index is $index");
        },
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Latest Offers',
            style: TextStyle(color: Colors.orange),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Show Snackbar',
              color: Colors.orange,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                "    Find discounts, Offers special",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 105),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('Profile');
                },
                child: Text(
                  "Check Offers",
                  style: TextStyle(fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(100)),
                    ),
                    primary: const Color.fromARGB(255, 255, 106, 0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 70, vertical: 17)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 50,
              color: Color.fromARGB(255, 251, 152, 5),
              shadowColor: Colors.pink,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset("images/48.png"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 50,
              color: Color.fromARGB(255, 251, 152, 5),
              shadowColor: Colors.pink,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset("images/49.png"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 50,
              color: Color.fromARGB(255, 251, 152, 5),
              shadowColor: Colors.pink,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset("images/50.png"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 50,
              color: Color.fromARGB(255, 251, 152, 5),
              shadowColor: Colors.pink,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset("images/49.png"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 50,
              color: Color.fromARGB(255, 251, 152, 5),
              shadowColor: Colors.pink,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset("images/48.png"),
              ),
            ),
            Card(
              elevation: 50,
              color: Color.fromARGB(255, 251, 152, 5),
              shadowColor: Colors.pink,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset("images/50.png"),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
