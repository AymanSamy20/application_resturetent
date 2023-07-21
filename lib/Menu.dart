import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            'Menu',
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
                Navigator.of(context).pushNamed('Desserts');
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.white,
        color: Colors.white,
        height: 75,
        backgroundColor: Color.fromARGB(255, 229, 136, 15),
        items: const <Widget>[
          Icon(
            Icons.menu,
            textDirection: TextDirection.rtl,
            size: 35,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 35),
                  width: 161,
                  height: 124,
                  child: IconButton(
                    icon: Image.asset(
                      'images/5.png',
                    ),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.of(context).pushNamed("Desserts");
                    },
                  ),
                ),
                Container(
                  width: 161,
                  height: 124,
                  child: IconButton(
                    icon: Image.asset('images/6.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.of(context).pushNamed("Desserts");
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 35),
                  width: 161,
                  height: 124,
                  child: IconButton(
                    icon: Image.asset('images/6.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.of(context).pushNamed("Desserts");
                    },
                  ),
                ),
                Container(
                  width: 161,
                  height: 124,
                  child: IconButton(
                    icon: Image.asset('images/8.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.of(context).pushNamed("Desserts");
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 35),
                  width: 161,
                  height: 124,
                  child: IconButton(
                    icon: Image.asset('images/7.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.of(context).pushNamed("Desserts");
                    },
                  ),
                ),
                Container(
                  width: 161,
                  height: 124,
                  child: IconButton(
                    icon: Image.asset('images/6.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.of(context).pushNamed("Desserts");
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 35),
                  width: 161,
                  height: 124,
                  child: IconButton(
                    icon: Image.asset('images/6.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.of(context).pushNamed("Desserts");
                    },
                  ),
                ),
                Container(
                  width: 161,
                  height: 124,
                  child: IconButton(
                    icon: Image.asset('images/8.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.of(context).pushNamed("Desserts");
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 35),
                  width: 161,
                  height: 124,
                  child: IconButton(
                    icon: Image.asset('images/5.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.of(context).pushNamed("Desserts");
                    },
                  ),
                ),
                Container(
                  width: 161,
                  height: 124,
                  child: IconButton(
                    icon: Image.asset('images/9.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.of(context).pushNamed("Desserts");
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 35),
                  width: 161,
                  height: 124,
                  child: IconButton(
                    icon: Image.asset('images/7.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.of(context).pushNamed("Desserts");
                    },
                  ),
                ),
                Container(
                  width: 161,
                  height: 124,
                  child: IconButton(
                    icon: Image.asset('images/6.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.of(context).pushNamed("Desserts");
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 35),
                  width: 161,
                  height: 124,
                  child: IconButton(
                    icon: Image.asset('images/6.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.of(context).pushNamed("Desserts");
                    },
                  ),
                ),
                Container(
                  width: 161,
                  height: 124,
                  child: IconButton(
                    icon: Image.asset('images/9.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.of(context).pushNamed("Desserts");
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 35),
                  width: 161,
                  height: 124,
                  child: IconButton(
                    icon: Image.asset('images/7.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.of(context).pushNamed("Desserts");
                    },
                  ),
                ),
                Container(
                  width: 161,
                  height: 124,
                  child: IconButton(
                    icon: Image.asset('images/6.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.of(context).pushNamed("Desserts");
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
