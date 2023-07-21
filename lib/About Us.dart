import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
            'About Us',
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
                Navigator.of(context).pushNamed('Inbox');
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(right: 330),
            child: Icon(
              Icons.radio_button_checked,
              color: Colors.orange,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 35, top: 5, right: 35),
            child: Text(
              " Lorem ipsum dolor sit amet, consectetur adipiscing  elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: EdgeInsets.only(right: 330),
            child: Icon(
              Icons.radio_button_checked,
              color: Colors.orange,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 35, top: 5, right: 35),
            child: Text(
              " Lorem ipsum dolor sit amet, consectetur adipiscing  elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: EdgeInsets.only(right: 330),
            child: Icon(
              Icons.radio_button_checked,
              color: Colors.orange,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 35, top: 5, right: 35),
            child: Text(
              " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ",
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: EdgeInsets.only(right: 330),
            child: Icon(
              Icons.radio_button_checked,
              color: Colors.orange,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 35, top: 5, right: 35),
            child: Text(
              " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ",
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      )),
    );
  }
}
