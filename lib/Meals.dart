import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Meals extends StatefulWidget {
  const Meals({Key? key}) : super(key: key);

  @override
  State<Meals> createState() => _MealsState();
}

class _MealsState extends State<Meals> {
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
            icon: Icon(
              Icons.menu,
              size: 35,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('Menu');
            },
            color: Colors.orange,
          ),
          IconButton(
            icon: Icon(
              Icons.lock,
              size: 35,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('LatestOffers');
            },
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
          padding: EdgeInsets.all(2),
          child: Text(
            'Good morning Akila!',
            style: TextStyle(color: Colors.orange),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.orange,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('Menu');
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(right: 275),
              child: const Text(
                "Delivering to",
                style: TextStyle(fontSize: 11),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 27),
                  child: Text("Current Location"),
                ),
                SizedBox(width: 25),
                Icon(
                  Icons.expand_more,
                  color: Colors.red,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      style: const TextStyle(color: Colors.purple),
                      cursorColor: Colors.purple,
                      decoration: InputDecoration(
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Icon(Icons.search),
                          ),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.black12,
                          labelText: '       Search food',
                          labelStyle: const TextStyle(color: Colors.black38),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.purple.withOpacity(.05)),
                              borderRadius: BorderRadius.circular(40).copyWith(
                                  bottomRight: const Radius.circular(0),
                                  topLeft: const Radius.circular(0))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.purple.withOpacity(.05)),
                              borderRadius: BorderRadius.circular(30).copyWith(
                                  bottomRight: const Radius.circular(0),
                                  topLeft: const Radius.circular(0)))),
                    )
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 7, left: 23),
                    child: SingleChildScrollView(
                      child: Row(
                        children: [Image.asset("images/21.png")],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 7),
                    child: SingleChildScrollView(
                      child: Row(
                        children: [Image.asset("images/22.png")],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 7),
                    child: SingleChildScrollView(
                      child: Row(
                        children: [Image.asset("images/23.png")],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 7),
                    child: SingleChildScrollView(
                      child: Row(
                        children: [Image.asset("images/24.png")],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 7),
                    child: SingleChildScrollView(
                      child: Row(
                        children: [Image.asset("images/22.png")],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 28),
                  child: Text("Popular Restaurents"),
                ),
                SizedBox(width: 25),
                Padding(
                  padding: EdgeInsets.only(left: 145),
                  child: Text(
                    "View all",
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset("images/25.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset("images/26.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset("images/27.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 28),
                  child: Text(
                    "Most Popular",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(width: 25),
                Padding(
                  padding: EdgeInsets.only(left: 150),
                  child: Text(
                    "View all",
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                  margin: const EdgeInsets.only(top: 7, left: 23),
                  child: SingleChildScrollView(
                    child: Row(
                      children: [Image.asset("images/28.png")],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 7),
                  child: SingleChildScrollView(
                    child: Row(
                      children: [Image.asset("images/29.png")],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 7),
                  child: SingleChildScrollView(
                    child: Row(
                      children: [Image.asset("images/28.png")],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 7),
                  child: SingleChildScrollView(
                    child: Row(
                      children: [Image.asset("images/29.png")],
                    ),
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 28),
                  child: Text(
                    "Recent Items",
                    style: TextStyle(fontSize: 26),
                  ),
                ),
                SizedBox(width: 25),
                Padding(
                  padding: EdgeInsets.only(left: 120),
                  child: Text(
                    "View all",
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100, top: 20),
              child: Image.asset("images/32.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 134, top: 20),
              child: Image.asset("images/30.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 42, top: 20),
              child: Image.asset("images/34.png"),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
