import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.white,
        color: Colors.white,
        height: 75,
        backgroundColor: const Color.fromARGB(255, 229, 136, 15),
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
            'Notifications',
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
                Navigator.of(context).pushNamed('AboutUs');
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 15),
              child: ListTile(
                title: Container(
                  width: 241,
                  height: 14,
                  child: const Text(
                    "Your orders has been picked up ",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
                subtitle: Text("Now "),
                leading: Container(
                    margin: const EdgeInsets.only(top: 10, left: 5),
                    child: Image.asset('images/12.png')),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.orange,
                ),
                onTap: () {
                  print("Thank You");
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5),
              child: ListTile(
                title: Container(
                  width: 241,
                  height: 14,
                  child: const Text(
                    "Your order has been delivered ",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
                subtitle: const Text("1 h ago "),
                leading: Container(
                    margin: const EdgeInsets.only(top: 10, left: 5),
                    child: Image.asset('images/12.png')),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.orange,
                ),
                onTap: () {
                  print("Thank You");
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5),
              child: ListTile(
                title: Container(
                  width: 241,
                  height: 14,
                  child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur ",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
                subtitle: const Text("3 h ago "),
                leading: Container(
                    margin: const EdgeInsets.only(top: 10, left: 5),
                    child: Image.asset('images/12.png')),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.orange,
                ),
                onTap: () {
                  print("Thank You");
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5),
              child: ListTile(
                title: Container(
                  width: 241,
                  height: 14,
                  child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
                subtitle: Text("5h ago "),
                leading: Container(
                    margin: const EdgeInsets.only(top: 10, left: 5),
                    child: Image.asset('images/12.png')),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.orange,
                ),
                onTap: () {
                  print("Thank You");
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5),
              child: ListTile(
                title: Container(
                  width: 241,
                  height: 14,
                  child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur ",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
                subtitle: Text("05 Sep 2020 "),
                leading: Container(
                    margin: const EdgeInsets.only(top: 10, left: 5),
                    child: Image.asset('images/12.png')),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.orange,
                ),
                onTap: () {
                  print("Thank You");
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5),
              child: ListTile(
                title: Container(
                  width: 241,
                  height: 14,
                  child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
                subtitle: const Text("12 Aug 2020 "),
                leading: Container(
                    margin: const EdgeInsets.only(top: 10, left: 5),
                    child: Image.asset('images/12.png')),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.orange,
                ),
                onTap: () {
                  print("Thank You");
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5),
              child: ListTile(
                title: Container(
                  width: 241,
                  height: 14,
                  child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur ",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
                subtitle: const Text("20 Jul 2020 "),
                leading: Container(
                    margin: const EdgeInsets.only(top: 10, left: 5),
                    child: Image.asset('images/12.png')),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.orange,
                ),
                onTap: () {
                  print("Thank You");
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5),
              child: ListTile(
                title: Container(
                  width: 241,
                  height: 14,
                  child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur ",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
                subtitle: const Text("12 Jul 2020 "),
                leading: Container(
                    margin: const EdgeInsets.only(top: 10, left: 5),
                    child: Image.asset('images/12.png')),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.orange,
                ),
                onTap: () {
                  print("Thank You");
                },
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
