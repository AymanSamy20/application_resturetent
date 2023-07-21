import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyOrder extends StatefulWidget {
  MyOrder({Key? key}) : super(key: key);

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
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
          padding: EdgeInsets.only(left: 90),
          child: Text(
            'My Order',
            style: TextStyle(color: Colors.orange),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 20, right: 100),
                child: Image.asset("images/60.png")),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text(
                      "Beef Burger x1",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    width: 230,
                  ),
                  Text(
                    "\$16",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, right: 23),
              child: Divider(
                color: Colors.black38,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text(
                      "Classic Burger x1",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    width: 213,
                  ),
                  Text(
                    "\$14",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, right: 23),
              child: Divider(
                color: Colors.black38,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text(
                      "Cheese Chicken Burger x1",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    width: 155,
                  ),
                  Text(
                    "\$17",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, right: 23),
              child: Divider(
                color: Colors.black38,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text(
                      "Chicken Legs Basket x1",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Text(
                    "\$15",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, right: 23),
              child: Divider(
                color: Colors.black38,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text(
                      "French Fries Large x1",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    width: 190,
                  ),
                  Text(
                    "\$6",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, right: 23),
              child: Divider(
                color: Colors.black38,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text(
                      "Delivery Instrusctions",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 115,
                  ),
                  Text(
                    " +   Add Notes",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.orange),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, right: 23),
              child: Divider(
                color: Colors.black38,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text(
                      "Sub Total",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 260,
                  ),
                  Text(
                    " \$68",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.orange),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text(
                      "Delivery Cost",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 240,
                  ),
                  Text(
                    " \$2",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.orange),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, right: 23),
              child: Divider(
                color: Colors.black38,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text(
                      "Total",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 273,
                  ),
                  Text(
                    " \$70",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                        fontSize: 22),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('Checkout');
              },
              child: Text(
                "Checkout",
                style: TextStyle(fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(100)),
                  ),
                  primary: Color.fromARGB(255, 255, 153, 0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 145, vertical: 20)),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
