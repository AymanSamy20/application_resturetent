import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class More extends StatefulWidget {
  More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.white,
        color: Colors.white,
        height: 75,
        backgroundColor: Color.fromARGB(255, 229, 136, 15),
        items: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.menu,
              size: 35,
            ),
            onPressed: () {},
            color: Colors.orange,
          ),
          IconButton(
            icon: const Icon(
              Icons.lock,
              size: 35,
            ),
            onPressed: () {},
            color: Colors.orange,
          ),
          const Icon(
            Icons.home,
            size: 35,
            color: Colors.orange,
          ),
          const Icon(
            Icons.person,
            size: 35,
            color: Colors.orange,
          ),
          const Icon(
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
            'More',
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
              onPressed: () {
                Navigator.of(context).pushNamed('PaymentDetails');
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            elevation: 25,
            shadowColor: Colors.pink,
            color: Colors.orange,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.center,
              padding: EdgeInsets.all(12),
              child: Image.asset(
                "images/52.png",
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            elevation: 35,
            shadowColor: Colors.pink,
            color: Colors.orange,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.center,
              padding: EdgeInsets.all(12),
              child: Image.asset(
                "images/53.png",
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            elevation: 35,
            shadowColor: Colors.pink,
            color: Colors.orange,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.center,
              padding: EdgeInsets.all(12),
              child: Image.asset(
                "images/54.png",
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            elevation: 35,
            shadowColor: Colors.pink,
            color: Colors.orange,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.center,
              padding: EdgeInsets.all(12),
              child: Image.asset(
                "images/55.png",
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            elevation: 35,
            shadowColor: Colors.pink,
            color: Colors.orange,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.center,
              padding: EdgeInsets.all(12),
              child: Image.asset(
                "images/56.png",
              ),
            ),
          )
        ],
      )),
    );
  }
}
