import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  Inbox({Key? key}) : super(key: key);

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
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
            'Inbox',
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
                Navigator.of(context).pushNamed('MyOrder');
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.pink, borderRadius: BorderRadius.circular(10)),
            child: Card(
              color: Colors.orange,
              elevation: 50,
              shadowColor: Colors.pink,
              child: Text(
                "Inbox",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Card(
              elevation: 50,
              shadowColor: Colors.pink,
              color: Colors.pink,
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                tileColor: Colors.orange,
                title: Text(
                  "MealMonkey Promotions",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                subtitle: Text(
                  " Lorem ipsum dolor sit amet, consectetur ",
                  style: TextStyle(fontSize: 12),
                ),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Icon(
                    Icons.radio_button_checked,
                    color: Colors.pink,
                  ),
                ),
                trailing: Text(
                  "6th July",
                  style: TextStyle(color: Colors.pink),
                ),
                onTap: () {
                  print("Thank You");
                },
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Card(
              elevation: 50,
              shadowColor: Colors.pink,
              color: Colors.pink,
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                tileColor: Colors.orange,
                title: Text(
                  "MealMonkey Promotions",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                subtitle: Text(
                  " Lorem ipsum dolor sit amet, consectetur ",
                  style: TextStyle(fontSize: 12),
                ),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Icon(
                    Icons.radio_button_checked,
                    color: Colors.pink,
                  ),
                ),
                trailing: Text(
                  "6th July",
                  style: TextStyle(color: Colors.pink),
                ),
                onTap: () {
                  print("Thank You");
                },
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Card(
              elevation: 50,
              shadowColor: Colors.pink,
              color: Colors.pink,
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                tileColor: Colors.orange,
                title: Text(
                  "MealMonkey Promotions",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                subtitle: Text(
                  " Lorem ipsum dolor sit amet, consectetur ",
                  style: TextStyle(fontSize: 12),
                ),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Icon(
                    Icons.radio_button_checked,
                    color: Colors.pink,
                  ),
                ),
                trailing: Text(
                  "6th July",
                  style: TextStyle(color: Colors.pink),
                ),
                onTap: () {
                  print("Thank You");
                },
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Card(
              elevation: 50,
              shadowColor: Colors.pink,
              color: Colors.pink,
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                tileColor: Colors.orange,
                title: Text(
                  "MealMonkey Promotions",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                subtitle: Text(
                  " Lorem ipsum dolor sit amet, consectetur ",
                  style: TextStyle(fontSize: 12),
                ),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Icon(
                    Icons.radio_button_checked,
                    color: Colors.pink,
                  ),
                ),
                trailing: Text(
                  "6th July",
                  style: TextStyle(color: Colors.pink),
                ),
                onTap: () {
                  print("Thank You");
                },
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Card(
              elevation: 50,
              shadowColor: Colors.pink,
              color: Colors.pink,
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                tileColor: Colors.orange,
                title: Text(
                  "MealMonkey Promotions",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                subtitle: Text(
                  " Lorem ipsum dolor sit amet, consectetur ",
                  style: TextStyle(fontSize: 12),
                ),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Icon(
                    Icons.radio_button_checked,
                    color: Colors.pink,
                  ),
                ),
                trailing: Text(
                  "6th July",
                  style: TextStyle(color: Colors.pink),
                ),
                onTap: () {
                  print("Thank You");
                },
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Card(
              elevation: 50,
              shadowColor: Colors.pink,
              color: Colors.pink,
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                tileColor: Colors.orange,
                title: Text(
                  "MealMonkey Promotions",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                subtitle: Text(
                  " Lorem ipsum dolor sit amet, consectetur ",
                  style: TextStyle(fontSize: 12),
                ),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Icon(
                    Icons.radio_button_checked,
                    color: Colors.pink,
                  ),
                ),
                trailing: Text(
                  "6th July",
                  style: TextStyle(color: Colors.pink),
                ),
                onTap: () {
                  print("Thank You");
                },
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ]),
      ),
    );
  }
}
