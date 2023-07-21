import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Desserts extends StatefulWidget {
  Desserts({Key? key}) : super(key: key);

  @override
  State<Desserts> createState() => _DessertsState();
}

class _DessertsState extends State<Desserts> {
  var Selected;
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
              'Desserts',
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
                  Navigator.of(context).pushNamed('LatestOffers');
                },
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
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
                            labelText: '       Search Address',
                            labelStyle: const TextStyle(color: Colors.black38),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.purple.withOpacity(.05)),
                                borderRadius: BorderRadius.circular(40)
                                    .copyWith(
                                        bottomRight: const Radius.circular(0),
                                        topLeft: const Radius.circular(0))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.purple.withOpacity(.05)),
                                borderRadius: BorderRadius.circular(30)
                                    .copyWith(
                                        bottomRight: const Radius.circular(0),
                                        topLeft: const Radius.circular(0)))),
                      )
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 35,
                shadowColor: Colors.pink,
                color: Colors.orange,
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(2),
                  width: 500,
                  height: 220,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(35))),
                              context: context,
                              builder: (context) => Container(
                                    height: 900.0,
                                    child: Container(
                                      width: double.infinity,
                                      height: 2,
                                      child: SingleChildScrollView(
                                        child: Column(children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 28, top: 2),
                                                child: Text(
                                                  "Tandoori Chicken Pizza",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 2),
                                                child: Image.asset(
                                                    "images/44.png"),
                                              )
                                            ],
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 2, right: 190),
                                            child: RatingBar.builder(
                                              initialRating: 3,
                                              itemSize: 25,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 4.0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 200,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 29),
                                                child: Text(
                                                  "4 Star Ratings",
                                                  style: TextStyle(
                                                    color: Colors.orange,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Text(
                                                  " Rs. 750 ",
                                                  style: TextStyle(
                                                      fontSize: 31,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 300),
                                            child: Text(
                                              " / per Portion",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 255),
                                            child: Text(
                                              " Description",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 15),
                                            width: 317,
                                            height: 60,
                                            child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada.",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 32, right: 30),
                                            child: Divider(),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 200),
                                            child: Text(
                                              "Customize your Order",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          // Row(
                                          //   children: [
                                          //     Container(
                                          //       padding: EdgeInsets.only(
                                          //           top: 12, left: 20),
                                          //       margin:
                                          //           EdgeInsets.only(left: 25),
                                          //       width: 350,
                                          //       height: 50,
                                          //       decoration: BoxDecoration(
                                          //           border: Border.all(),
                                          //           borderRadius:
                                          //               BorderRadius.circular(
                                          //                   20)),
                                          //       child: Text(
                                          //           "- Select the size of portion -"),

                                          //     ),
                                          //   ],
                                          // )
                                          Center(
                                              child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black12,
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                        left:
                                                            Radius.circular(10),
                                                        right: Radius.circular(
                                                            10))),
                                            margin: EdgeInsets.only(
                                                left: 20, right: 20, top: 10),
                                            padding: EdgeInsets.all(2),
                                            child: DropdownButton(
                                              isExpanded: true,
                                              hint: Container(
                                                padding: EdgeInsets.all(13),
                                                child: Text(
                                                  "- Select the ingredients -",
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              onTap: (() {
                                                print("Hello Flutter");
                                              }),
                                              items: [
                                                "Salts",
                                                "Sandwish",
                                                "tomato",
                                                "orange",
                                                "apple"
                                              ]
                                                  .map((e) => DropdownMenuItem(
                                                      child: Container(
                                                          color: Colors.orange,
                                                          width:
                                                              double.infinity,
                                                          child: Text("  $e")),
                                                      value: e))
                                                  .toList(),
                                              onChanged: (val) {
                                                setState(() {
                                                  Selected = val;
                                                });
                                              },
                                              value: Selected,
                                            ),
                                          )),
                                          Center(
                                              child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black12,
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                        left:
                                                            Radius.circular(10),
                                                        right: Radius.circular(
                                                            10))),
                                            margin: EdgeInsets.only(
                                                left: 20, right: 20, top: 10),
                                            padding: EdgeInsets.all(2),
                                            child: DropdownButton(
                                              isExpanded: true,
                                              hint: Container(
                                                padding: EdgeInsets.all(13),
                                                child: Text(
                                                  " - Select the size of portion -",
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              onTap: (() {
                                                print("Hello Flutter");
                                              }),
                                              items: [
                                                "10",
                                                "20",
                                                "30",
                                                "40",
                                                "50"
                                              ]
                                                  .map((e) => DropdownMenuItem(
                                                      child: Container(
                                                          color: Colors.orange,
                                                          width:
                                                              double.infinity,
                                                          child: Text("  $e")),
                                                      value: e))
                                                  .toList(),
                                              onChanged: (val) {
                                                setState(() {
                                                  Selected = val;
                                                });
                                              },
                                              value: Selected,
                                            ),
                                          )),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 25, left: 25),
                                                child: Text(
                                                  "Number of Portions",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 25, top: 20),
                                                width: 60,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    border: Border.all(
                                                        color: Colors.orange),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                padding: EdgeInsets.only(
                                                    left: 27, top: 5),
                                                child: Text(
                                                  "-",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 2, top: 20),
                                                width: 60,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    border: Border.all(
                                                      color: Colors.orange,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                padding: EdgeInsets.only(
                                                    left: 25, top: 5),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 2, top: 20),
                                                width: 60,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    border: Border.all(
                                                      color: Colors.orange,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                padding: EdgeInsets.only(
                                                    left: 25, top: 5),
                                                child: Text(
                                                  "+",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Image.asset("images/47.png"),
                                          )
                                        ]),
                                      ),
                                    ),
                                  ));
                        },
                        icon: Image.asset(
                          "images/40.png",
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 35,
                shadowColor: Colors.pink,
                color: Colors.orange,
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(2),
                  width: 500,
                  height: 220,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(35))),
                              context: context,
                              builder: (context) => Container(
                                    height: 900.0,
                                    child: Container(
                                      width: double.infinity,
                                      height: 2,
                                      child: SingleChildScrollView(
                                        child: Column(children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 28, top: 2),
                                                child: Text(
                                                  "Tandoori Chicken Pizza",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 2),
                                                child: Image.asset(
                                                    "images/44.png"),
                                              )
                                            ],
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 2, right: 190),
                                            child: RatingBar.builder(
                                              initialRating: 3,
                                              itemSize: 25,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 4.0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 200,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 29),
                                                child: Text(
                                                  "4 Star Ratings",
                                                  style: TextStyle(
                                                    color: Colors.orange,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Text(
                                                  " Rs. 750 ",
                                                  style: TextStyle(
                                                      fontSize: 31,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 300),
                                            child: Text(
                                              " / per Portion",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 255),
                                            child: Text(
                                              " Description",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 15),
                                            width: 317,
                                            height: 60,
                                            child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada.",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 32, right: 30),
                                            child: Divider(),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 200),
                                            child: Text(
                                              "Customize your Order",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          // Row(
                                          //   children: [
                                          //     Container(
                                          //       padding: EdgeInsets.only(
                                          //           top: 12, left: 20),
                                          //       margin:
                                          //           EdgeInsets.only(left: 25),
                                          //       width: 350,
                                          //       height: 50,
                                          //       decoration: BoxDecoration(
                                          //           border: Border.all(),
                                          //           borderRadius:
                                          //               BorderRadius.circular(
                                          //                   20)),
                                          //       child: Text(
                                          //           "- Select the size of portion -"),

                                          //     ),
                                          //   ],
                                          // )
                                          Center(
                                              child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black12,
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                        left:
                                                            Radius.circular(10),
                                                        right: Radius.circular(
                                                            10))),
                                            margin: EdgeInsets.only(
                                                left: 20, right: 20, top: 10),
                                            padding: EdgeInsets.all(2),
                                            child: DropdownButton(
                                              isExpanded: true,
                                              hint: Container(
                                                padding: EdgeInsets.all(13),
                                                child: Text(
                                                  "- Select the ingredients -",
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              onTap: (() {
                                                print("Hello Flutter");
                                              }),
                                              items: [
                                                "Salts",
                                                "Sandwish",
                                                "tomato",
                                                "orange",
                                                "apple"
                                              ]
                                                  .map((e) => DropdownMenuItem(
                                                      child: Container(
                                                          color: Colors.orange,
                                                          width:
                                                              double.infinity,
                                                          child: Text("  $e")),
                                                      value: e))
                                                  .toList(),
                                              onChanged: (val) {
                                                setState(() {
                                                  Selected = val;
                                                });
                                              },
                                              value: Selected,
                                            ),
                                          )),
                                          Center(
                                              child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black12,
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                        left:
                                                            Radius.circular(10),
                                                        right: Radius.circular(
                                                            10))),
                                            margin: EdgeInsets.only(
                                                left: 20, right: 20, top: 10),
                                            padding: EdgeInsets.all(2),
                                            child: DropdownButton(
                                              isExpanded: true,
                                              hint: Container(
                                                padding: EdgeInsets.all(13),
                                                child: Text(
                                                  " - Select the size of portion -",
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              onTap: (() {
                                                print("Hello Flutter");
                                              }),
                                              items: [
                                                "10",
                                                "20",
                                                "30",
                                                "40",
                                                "50"
                                              ]
                                                  .map((e) => DropdownMenuItem(
                                                      child: Container(
                                                          color: Colors.orange,
                                                          width:
                                                              double.infinity,
                                                          child: Text("  $e")),
                                                      value: e))
                                                  .toList(),
                                              onChanged: (val) {
                                                setState(() {
                                                  Selected = val;
                                                });
                                              },
                                              value: Selected,
                                            ),
                                          )),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 25, left: 25),
                                                child: Text(
                                                  "Number of Portions",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 25, top: 20),
                                                width: 60,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    border: Border.all(
                                                        color: Colors.orange),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                padding: EdgeInsets.only(
                                                    left: 27, top: 5),
                                                child: Text(
                                                  "-",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 2, top: 20),
                                                width: 60,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    border: Border.all(
                                                      color: Colors.orange,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                padding: EdgeInsets.only(
                                                    left: 25, top: 5),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 2, top: 20),
                                                width: 60,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    border: Border.all(
                                                      color: Colors.orange,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                padding: EdgeInsets.only(
                                                    left: 25, top: 5),
                                                child: Text(
                                                  "+",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Image.asset("images/47.png"),
                                          )
                                        ]),
                                      ),
                                    ),
                                  ));
                        },
                        icon: Image.asset(
                          "images/41.png",
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 35,
                shadowColor: Colors.pink,
                color: Colors.orange,
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(2),
                  width: 500,
                  height: 220,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(35))),
                              context: context,
                              builder: (context) => Container(
                                    height: 900.0,
                                    child: Container(
                                      width: double.infinity,
                                      height: 2,
                                      child: SingleChildScrollView(
                                        child: Column(children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 28, top: 2),
                                                child: Text(
                                                  "Tandoori Chicken Pizza",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 2),
                                                child: Image.asset(
                                                    "images/44.png"),
                                              )
                                            ],
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 2, right: 190),
                                            child: RatingBar.builder(
                                              initialRating: 3,
                                              itemSize: 25,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 4.0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 200,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 29),
                                                child: Text(
                                                  "4 Star Ratings",
                                                  style: TextStyle(
                                                    color: Colors.orange,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Text(
                                                  " Rs. 750 ",
                                                  style: TextStyle(
                                                      fontSize: 31,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 300),
                                            child: Text(
                                              " / per Portion",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 255),
                                            child: Text(
                                              " Description",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 15),
                                            width: 317,
                                            height: 60,
                                            child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada.",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 32, right: 30),
                                            child: Divider(),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 200),
                                            child: Text(
                                              "Customize your Order",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          // Row(
                                          //   children: [
                                          //     Container(
                                          //       padding: EdgeInsets.only(
                                          //           top: 12, left: 20),
                                          //       margin:
                                          //           EdgeInsets.only(left: 25),
                                          //       width: 350,
                                          //       height: 50,
                                          //       decoration: BoxDecoration(
                                          //           border: Border.all(),
                                          //           borderRadius:
                                          //               BorderRadius.circular(
                                          //                   20)),
                                          //       child: Text(
                                          //           "- Select the size of portion -"),

                                          //     ),
                                          //   ],
                                          // )
                                          Center(
                                              child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black12,
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                        left:
                                                            Radius.circular(10),
                                                        right: Radius.circular(
                                                            10))),
                                            margin: EdgeInsets.only(
                                                left: 20, right: 20, top: 10),
                                            padding: EdgeInsets.all(2),
                                            child: DropdownButton(
                                              isExpanded: true,
                                              hint: Container(
                                                padding: EdgeInsets.all(13),
                                                child: Text(
                                                  "- Select the ingredients -",
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              onTap: (() {
                                                print("Hello Flutter");
                                              }),
                                              items: [
                                                "Salts",
                                                "Sandwish",
                                                "tomato",
                                                "orange",
                                                "apple"
                                              ]
                                                  .map((e) => DropdownMenuItem(
                                                      child: Container(
                                                          color: Colors.orange,
                                                          width:
                                                              double.infinity,
                                                          child: Text("  $e")),
                                                      value: e))
                                                  .toList(),
                                              onChanged: (val) {
                                                setState(() {
                                                  Selected = val;
                                                });
                                              },
                                              value: Selected,
                                            ),
                                          )),
                                          Center(
                                              child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black12,
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                        left:
                                                            Radius.circular(10),
                                                        right: Radius.circular(
                                                            10))),
                                            margin: EdgeInsets.only(
                                                left: 20, right: 20, top: 10),
                                            padding: EdgeInsets.all(2),
                                            child: DropdownButton(
                                              isExpanded: true,
                                              hint: Container(
                                                padding: EdgeInsets.all(13),
                                                child: Text(
                                                  " - Select the size of portion -",
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              onTap: (() {
                                                print("Hello Flutter");
                                              }),
                                              items: [
                                                "10",
                                                "20",
                                                "30",
                                                "40",
                                                "50"
                                              ]
                                                  .map((e) => DropdownMenuItem(
                                                      child: Container(
                                                          color: Colors.orange,
                                                          width:
                                                              double.infinity,
                                                          child: Text("  $e")),
                                                      value: e))
                                                  .toList(),
                                              onChanged: (val) {
                                                setState(() {
                                                  Selected = val;
                                                });
                                              },
                                              value: Selected,
                                            ),
                                          )),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 25, left: 25),
                                                child: Text(
                                                  "Number of Portions",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 25, top: 20),
                                                width: 60,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    border: Border.all(
                                                        color: Colors.orange),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                padding: EdgeInsets.only(
                                                    left: 27, top: 5),
                                                child: Text(
                                                  "-",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 2, top: 20),
                                                width: 60,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    border: Border.all(
                                                      color: Colors.orange,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                padding: EdgeInsets.only(
                                                    left: 25, top: 5),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 2, top: 20),
                                                width: 60,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    border: Border.all(
                                                      color: Colors.orange,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                padding: EdgeInsets.only(
                                                    left: 25, top: 5),
                                                child: Text(
                                                  "+",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Image.asset("images/47.png"),
                                          )
                                        ]),
                                      ),
                                    ),
                                  ));
                        },
                        icon: Image.asset(
                          "images/43.png",
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 35,
                shadowColor: Colors.pink,
                color: Colors.orange,
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(2),
                  width: 500,
                  height: 220,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(35))),
                              context: context,
                              builder: (context) => Container(
                                    height: 900.0,
                                    child: Container(
                                      width: double.infinity,
                                      height: 2,
                                      child: SingleChildScrollView(
                                        child: Column(children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 28, top: 2),
                                                child: Text(
                                                  "Tandoori Chicken Pizza",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 2),
                                                child: Image.asset(
                                                    "images/44.png"),
                                              )
                                            ],
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 2, right: 190),
                                            child: RatingBar.builder(
                                              initialRating: 3,
                                              itemSize: 25,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 4.0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 200,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 29),
                                                child: Text(
                                                  "4 Star Ratings",
                                                  style: TextStyle(
                                                    color: Colors.orange,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Text(
                                                  " Rs. 750 ",
                                                  style: TextStyle(
                                                      fontSize: 31,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 300),
                                            child: Text(
                                              " / per Portion",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 255),
                                            child: Text(
                                              " Description",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 15),
                                            width: 317,
                                            height: 60,
                                            child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada.",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 32, right: 30),
                                            child: Divider(),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 200),
                                            child: Text(
                                              "Customize your Order",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          // Row(
                                          //   children: [
                                          //     Container(
                                          //       padding: EdgeInsets.only(
                                          //           top: 12, left: 20),
                                          //       margin:
                                          //           EdgeInsets.only(left: 25),
                                          //       width: 350,
                                          //       height: 50,
                                          //       decoration: BoxDecoration(
                                          //           border: Border.all(),
                                          //           borderRadius:
                                          //               BorderRadius.circular(
                                          //                   20)),
                                          //       child: Text(
                                          //           "- Select the size of portion -"),

                                          //     ),
                                          //   ],
                                          // )
                                          Center(
                                              child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black12,
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                        left:
                                                            Radius.circular(10),
                                                        right: Radius.circular(
                                                            10))),
                                            margin: EdgeInsets.only(
                                                left: 20, right: 20, top: 10),
                                            padding: EdgeInsets.all(2),
                                            child: DropdownButton(
                                              isExpanded: true,
                                              hint: Container(
                                                padding: EdgeInsets.all(13),
                                                child: Text(
                                                  "- Select the ingredients -",
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              onTap: (() {
                                                print("Hello Flutter");
                                              }),
                                              items: [
                                                "Salts",
                                                "Sandwish",
                                                "tomato",
                                                "orange",
                                                "apple"
                                              ]
                                                  .map((e) => DropdownMenuItem(
                                                      child: Container(
                                                          color: Colors.orange,
                                                          width:
                                                              double.infinity,
                                                          child: Text("  $e")),
                                                      value: e))
                                                  .toList(),
                                              onChanged: (val) {
                                                setState(() {
                                                  Selected = val;
                                                });
                                              },
                                              value: Selected,
                                            ),
                                          )),
                                          Center(
                                              child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black12,
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                        left:
                                                            Radius.circular(10),
                                                        right: Radius.circular(
                                                            10))),
                                            margin: EdgeInsets.only(
                                                left: 20, right: 20, top: 10),
                                            padding: EdgeInsets.all(2),
                                            child: DropdownButton(
                                              isExpanded: true,
                                              hint: Container(
                                                padding: EdgeInsets.all(13),
                                                child: Text(
                                                  " - Select the size of portion -",
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              onTap: (() {
                                                print("Hello Flutter");
                                              }),
                                              items: [
                                                "10",
                                                "20",
                                                "30",
                                                "40",
                                                "50"
                                              ]
                                                  .map((e) => DropdownMenuItem(
                                                      child: Container(
                                                          color: Colors.orange,
                                                          width:
                                                              double.infinity,
                                                          child: Text("  $e")),
                                                      value: e))
                                                  .toList(),
                                              onChanged: (val) {
                                                setState(() {
                                                  Selected = val;
                                                });
                                              },
                                              value: Selected,
                                            ),
                                          )),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 25, left: 25),
                                                child: Text(
                                                  "Number of Portions",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 25, top: 20),
                                                width: 60,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    border: Border.all(
                                                        color: Colors.orange),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                padding: EdgeInsets.only(
                                                    left: 27, top: 5),
                                                child: Text(
                                                  "-",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 2, top: 20),
                                                width: 60,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    border: Border.all(
                                                      color: Colors.orange,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                padding: EdgeInsets.only(
                                                    left: 25, top: 5),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 2, top: 20),
                                                width: 60,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    border: Border.all(
                                                      color: Colors.orange,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                padding: EdgeInsets.only(
                                                    left: 25, top: 5),
                                                child: Text(
                                                  "+",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Image.asset("images/47.png"),
                                          )
                                        ]),
                                      ),
                                    ),
                                  ));
                        },
                        icon: Image.asset(
                          "images/42.png",
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 35,
                shadowColor: Colors.pink,
                color: Colors.orange,
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(2),
                  width: 500,
                  height: 220,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(35))),
                              context: context,
                              builder: (context) => Container(
                                    height: 900.0,
                                    child: Container(
                                      width: double.infinity,
                                      height: 2,
                                      child: SingleChildScrollView(
                                        child: Column(children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 28, top: 2),
                                                child: Text(
                                                  "Tandoori Chicken Pizza",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 2),
                                                child: Image.asset(
                                                    "images/44.png"),
                                              )
                                            ],
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 2, right: 190),
                                            child: RatingBar.builder(
                                              initialRating: 3,
                                              itemSize: 25,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 4.0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 200,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 29),
                                                child: Text(
                                                  "4 Star Ratings",
                                                  style: TextStyle(
                                                    color: Colors.orange,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Text(
                                                  " Rs. 750 ",
                                                  style: TextStyle(
                                                      fontSize: 31,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 300),
                                            child: Text(
                                              " / per Portion",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 255),
                                            child: Text(
                                              " Description",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 15),
                                            width: 317,
                                            height: 60,
                                            child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada.",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 32, right: 30),
                                            child: Divider(),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 200),
                                            child: Text(
                                              "Customize your Order",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          // Row(
                                          //   children: [
                                          //     Container(
                                          //       padding: EdgeInsets.only(
                                          //           top: 12, left: 20),
                                          //       margin:
                                          //           EdgeInsets.only(left: 25),
                                          //       width: 350,
                                          //       height: 50,
                                          //       decoration: BoxDecoration(
                                          //           border: Border.all(),
                                          //           borderRadius:
                                          //               BorderRadius.circular(
                                          //                   20)),
                                          //       child: Text(
                                          //           "- Select the size of portion -"),

                                          //     ),
                                          //   ],
                                          // )
                                          Center(
                                              child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black12,
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                        left:
                                                            Radius.circular(10),
                                                        right: Radius.circular(
                                                            10))),
                                            margin: EdgeInsets.only(
                                                left: 20, right: 20, top: 10),
                                            padding: EdgeInsets.all(2),
                                            child: DropdownButton(
                                              isExpanded: true,
                                              hint: Container(
                                                padding: EdgeInsets.all(13),
                                                child: Text(
                                                  "- Select the ingredients -",
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              onTap: (() {
                                                print("Hello Flutter");
                                              }),
                                              items: [
                                                "Salts",
                                                "Sandwish",
                                                "tomato",
                                                "orange",
                                                "apple"
                                              ]
                                                  .map((e) => DropdownMenuItem(
                                                      child: Container(
                                                          color: Colors.orange,
                                                          width:
                                                              double.infinity,
                                                          child: Text("  $e")),
                                                      value: e))
                                                  .toList(),
                                              onChanged: (val) {
                                                setState(() {
                                                  Selected = val;
                                                });
                                              },
                                              value: Selected,
                                            ),
                                          )),
                                          Center(
                                              child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black12,
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                        left:
                                                            Radius.circular(10),
                                                        right: Radius.circular(
                                                            10))),
                                            margin: EdgeInsets.only(
                                                left: 20, right: 20, top: 10),
                                            padding: EdgeInsets.all(2),
                                            child: DropdownButton(
                                              isExpanded: true,
                                              hint: Container(
                                                padding: EdgeInsets.all(13),
                                                child: Text(
                                                  " - Select the size of portion -",
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              onTap: (() {
                                                print("Hello Flutter");
                                              }),
                                              items: [
                                                "10",
                                                "20",
                                                "30",
                                                "40",
                                                "50"
                                              ]
                                                  .map((e) => DropdownMenuItem(
                                                      child: Container(
                                                          color: Colors.orange,
                                                          width:
                                                              double.infinity,
                                                          child: Text("  $e")),
                                                      value: e))
                                                  .toList(),
                                              onChanged: (val) {
                                                setState(() {
                                                  Selected = val;
                                                });
                                              },
                                              value: Selected,
                                            ),
                                          )),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 25, left: 25),
                                                child: Text(
                                                  "Number of Portions",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 25, top: 20),
                                                width: 60,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    border: Border.all(
                                                        color: Colors.orange),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                padding: EdgeInsets.only(
                                                    left: 27, top: 5),
                                                child: Text(
                                                  "-",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 2, top: 20),
                                                width: 60,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    border: Border.all(
                                                      color: Colors.orange,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                padding: EdgeInsets.only(
                                                    left: 25, top: 5),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 2, top: 20),
                                                width: 60,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    border: Border.all(
                                                      color: Colors.orange,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                padding: EdgeInsets.only(
                                                    left: 25, top: 5),
                                                child: Text(
                                                  "+",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Image.asset("images/47.png"),
                                          )
                                        ]),
                                      ),
                                    ),
                                  ));
                        },
                        icon: Image.asset(
                          "images/41.png",
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 35,
                shadowColor: Colors.pink,
                color: Colors.orange,
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(2),
                  width: 500,
                  height: 220,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(35))),
                              context: context,
                              builder: (context) => Container(
                                    height: 900.0,
                                    child: Container(
                                      width: double.infinity,
                                      height: 2,
                                      child: SingleChildScrollView(
                                        child: Column(children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 28, top: 2),
                                                child: Text(
                                                  "Tandoori Chicken Pizza",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 2),
                                                child: Image.asset(
                                                    "images/44.png"),
                                              )
                                            ],
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 2, right: 190),
                                            child: RatingBar.builder(
                                              initialRating: 3,
                                              itemSize: 25,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 4.0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 200,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 29),
                                                child: Text(
                                                  "4 Star Ratings",
                                                  style: TextStyle(
                                                    color: Colors.orange,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Text(
                                                  " Rs. 750 ",
                                                  style: TextStyle(
                                                      fontSize: 31,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 300),
                                            child: Text(
                                              " / per Portion",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 255),
                                            child: Text(
                                              " Description",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 15),
                                            width: 317,
                                            height: 60,
                                            child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada.",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 32, right: 30),
                                            child: Divider(),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 200),
                                            child: Text(
                                              "Customize your Order",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          // Row(
                                          //   children: [
                                          //     Container(
                                          //       padding: EdgeInsets.only(
                                          //           top: 12, left: 20),
                                          //       margin:
                                          //           EdgeInsets.only(left: 25),
                                          //       width: 350,
                                          //       height: 50,
                                          //       decoration: BoxDecoration(
                                          //           border: Border.all(),
                                          //           borderRadius:
                                          //               BorderRadius.circular(
                                          //                   20)),
                                          //       child: Text(
                                          //           "- Select the size of portion -"),

                                          //     ),
                                          //   ],
                                          // )
                                          Center(
                                              child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black12,
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                        left:
                                                            Radius.circular(10),
                                                        right: Radius.circular(
                                                            10))),
                                            margin: EdgeInsets.only(
                                                left: 20, right: 20, top: 10),
                                            padding: EdgeInsets.all(2),
                                            child: DropdownButton(
                                              isExpanded: true,
                                              hint: Container(
                                                padding: EdgeInsets.all(13),
                                                child: Text(
                                                  "- Select the ingredients -",
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              onTap: (() {
                                                print("Hello Flutter");
                                              }),
                                              items: [
                                                "Salts",
                                                "Sandwish",
                                                "tomato",
                                                "orange",
                                                "apple"
                                              ]
                                                  .map((e) => DropdownMenuItem(
                                                      child: Container(
                                                          color: Colors.orange,
                                                          width:
                                                              double.infinity,
                                                          child: Text("  $e")),
                                                      value: e))
                                                  .toList(),
                                              onChanged: (val) {
                                                setState(() {
                                                  Selected = val;
                                                });
                                              },
                                              value: Selected,
                                            ),
                                          )),
                                          Center(
                                              child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black12,
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                        left:
                                                            Radius.circular(10),
                                                        right: Radius.circular(
                                                            10))),
                                            margin: EdgeInsets.only(
                                                left: 20, right: 20, top: 10),
                                            padding: EdgeInsets.all(2),
                                            child: DropdownButton(
                                              isExpanded: true,
                                              hint: Container(
                                                padding: EdgeInsets.all(13),
                                                child: Text(
                                                  " - Select the size of portion -",
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              onTap: (() {
                                                print("Hello Flutter");
                                              }),
                                              items: [
                                                "10",
                                                "20",
                                                "30",
                                                "40",
                                                "50"
                                              ]
                                                  .map((e) => DropdownMenuItem(
                                                      child: Container(
                                                          color: Colors.orange,
                                                          width:
                                                              double.infinity,
                                                          child: Text("  $e")),
                                                      value: e))
                                                  .toList(),
                                              onChanged: (val) {
                                                setState(() {
                                                  Selected = val;
                                                });
                                              },
                                              value: Selected,
                                            ),
                                          )),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 25, left: 25),
                                                child: Text(
                                                  "Number of Portions",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 25, top: 20),
                                                width: 60,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    border: Border.all(
                                                        color: Colors.orange),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                padding: EdgeInsets.only(
                                                    left: 27, top: 5),
                                                child: Text(
                                                  "-",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 2, top: 20),
                                                width: 60,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    border: Border.all(
                                                      color: Colors.orange,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                padding: EdgeInsets.only(
                                                    left: 25, top: 5),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 2, top: 20),
                                                width: 60,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    border: Border.all(
                                                      color: Colors.orange,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                padding: EdgeInsets.only(
                                                    left: 25, top: 5),
                                                child: Text(
                                                  "+",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Image.asset("images/47.png"),
                                          )
                                        ]),
                                      ),
                                    ),
                                  ));
                        },
                        icon: Image.asset(
                          "images/40.png",
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}
