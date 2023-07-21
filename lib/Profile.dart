import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _nameState();
}

class _nameState extends State<Profile> {
  int selectedindex = 0;
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
            onPressed: () {},
            color: Colors.orange,
          ),
          IconButton(
            icon: Icon(
              Icons.lock,
              size: 35,
            ),
            onPressed: () {},
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
            'Profile',
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
                Navigator.of(context).pushReplacementNamed('LatestOffers');
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 7),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Image.asset(
                          "images/51.png",
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 28, right: 34, top: 70),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.camera_enhance),
                      color: Colors.orange,
                    )),
              ],
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 120),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          color: Colors.orange,
                          size: 20,
                        ))),
                Container(
                    padding: EdgeInsets.only(top: 3),
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.orange),
                    ))
              ],
            ),
            Container(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  "Hi there Emilia!",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
            Container(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  "Sign Out",
                  style: TextStyle(fontSize: 11),
                )),
            Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                tileColor: Colors.black26,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Name",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
                subtitle: Text(
                  "   Emilia Clarke",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                tileColor: Colors.black26,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Email",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
                subtitle: Text(
                  "   emiliaclarke@email.com",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                tileColor: Colors.black26,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Mobile No",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
                subtitle: Text(
                  "   emiliaclarke@email.com",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                tileColor: Colors.black26,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Address",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
                subtitle: Text(
                  "   No 23, 6th Lane, Colombo 03",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                tileColor: Colors.black26,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Password",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
                subtitle: Text(
                  "   *******************",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                tileColor: Colors.black26,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Confirm Password",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
                subtitle: Text(
                  "   *******************",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('More');
              },
              child: Text(
                "Save",
                style: TextStyle(fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(100)),
                  ),
                  primary: Colors.orange,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 160, vertical: 20)),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
