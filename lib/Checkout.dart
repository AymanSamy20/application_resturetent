import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  var Selected;
  bool notfiy = false;
  String? country;
  // String? car;
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
          padding: EdgeInsets.only(left: 100),
          child: Text(
            'Checkout',
            style: TextStyle(color: Colors.orange),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15, right: 235),
              child: Text("Delivery Address"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: ListTile(
                title: Text(
                  "653 Nostrand Ave., ",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    "Brooklyn, NY 11216",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                trailing: Text(
                  "Change",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 28),
                    child: Text(
                      "Payment method",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    " +   Add Notes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 28),
                    child: Text(
                      "Cash on delivery",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 195,
                  ),
                  Radio(
                      activeColor: Colors.green,
                      value: "usa",
                      groupValue: country,
                      onChanged: (val) {
                        setState(() {
                          country = val.toString();
                        });
                      })
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, right: 23),
              child: Divider(
                color: Colors.black38,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset("images/58.png"),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 5),
                  child: Text("**** ****"),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 5),
                  child: Text("2187"),
                ),
                SizedBox(
                  width: 150,
                ),
                Row(
                  children: [
                    Radio(
                        activeColor: Colors.red,
                        value: "mmm",
                        groupValue: country,
                        onChanged: (val) {
                          setState(() {
                            country = val.toString();
                            print(country);
                          });
                        })
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, right: 23),
              child: Divider(
                color: Colors.black38,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset("images/61.png"),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 5),
                  child: Text("johndoe@email.com"),
                ),
                SizedBox(
                  width: 135,
                ),
                Row(
                  children: [
                    Radio(
                        activeColor: Colors.orange,
                        value: "sss",
                        groupValue: country,
                        onChanged: (val) {
                          setState(() {
                            country = val.toString();
                            print(country);
                          });
                        })
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, right: 23),
              child: Divider(
                color: Colors.black38,
              ),
            ),
            const SizedBox(
              height: 25,
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
              height: 18,
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
            SizedBox(
              height: 18,
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
                    " \$4",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.orange),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
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
            SizedBox(
              height: 45,
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(35))),
                    context: context,
                    builder: (context) => Container(
                          height: 900.0,
                          child: Container(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 340),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.close,
                                        size: 20,
                                      )),
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(right: 220),
                                    child: Text("Add Credit/Debit Card")),
                                SizedBox(
                                  height: 8,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 18, right: 38),
                                  child: Divider(
                                    color: Colors.black38,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextFormField(
                                          keyboardType: TextInputType.name,
                                          style: const TextStyle(
                                              color: Colors.purple),
                                          cursorColor: Colors.purple,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            filled: true,
                                            fillColor: Colors.black12,
                                            labelText: '      Card Number',
                                            labelStyle: const TextStyle(
                                                color: Colors.black38),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(40)
                                                        .copyWith()),
                                          ),
                                        )
                                      ],
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text("Expiry"),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Flexible(
                                      child: Container(
                                        margin: EdgeInsets.only(left: 30),
                                        padding:
                                            EdgeInsets.only(left: 2, right: 20),
                                        child: TextFormField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Colors.black12,
                                              labelText: '       MM',
                                              labelStyle: const TextStyle(
                                                  color: Colors.black38),
                                              hintStyle:
                                                  TextStyle(fontSize: 14),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  borderSide:
                                                      BorderSide(width: 3))),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Container(
                                        margin: EdgeInsets.only(right: 30),
                                        padding:
                                            EdgeInsets.only(left: 2, right: 20),
                                        child: TextFormField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Colors.black12,
                                              labelText: '        YY',
                                              labelStyle: const TextStyle(
                                                  color: Colors.black38),
                                              hintStyle:
                                                  TextStyle(fontSize: 14),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  borderSide:
                                                      BorderSide(width: 3))),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 12, right: 8),
                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          TextFormField(
                                            keyboardType: TextInputType.name,
                                            style: const TextStyle(
                                                color: Colors.purple),
                                            cursorColor: Colors.purple,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              filled: true,
                                              fillColor: Colors.black12,
                                              labelText: '      Security Code',
                                              labelStyle: const TextStyle(
                                                  color: Colors.black38),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(40)
                                                          .copyWith()),
                                            ),
                                          )
                                        ],
                                      )),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 12, right: 8),
                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          TextFormField(
                                            keyboardType: TextInputType.name,
                                            style: const TextStyle(
                                                color: Colors.purple),
                                            cursorColor: Colors.purple,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              filled: true,
                                              fillColor: Colors.black12,
                                              labelText: '       First Name',
                                              labelStyle: const TextStyle(
                                                  color: Colors.black38),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(40)
                                                          .copyWith()),
                                            ),
                                          )
                                        ],
                                      )),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 12, right: 8),
                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          TextFormField(
                                            keyboardType: TextInputType.name,
                                            style: const TextStyle(
                                                color: Colors.purple),
                                            cursorColor: Colors.purple,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              filled: true,
                                              fillColor: Colors.black12,
                                              labelText: '       Last Name',
                                              labelStyle: const TextStyle(
                                                  color: Colors.black38),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(40)
                                                          .copyWith()),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            padding: EdgeInsets.only(
                                                right: 10, top: 10),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 2),
                                                  child: Text(
                                                    "            You can remove this card",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 50,
                                                ),
                                                InkWell(
                                                  child: Switch(
                                                      value: notfiy,
                                                      onChanged: (val) {
                                                        showModalBottomSheet(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.vertical(
                                                                    top: Radius
                                                                        .circular(
                                                                            50))),
                                                            context: context,
                                                            builder:
                                                                (context) =>
                                                                    Container(
                                                                      height:
                                                                          900,
                                                                      child:
                                                                          Column(
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(left: 340),
                                                                            child: IconButton(
                                                                                onPressed: () {},
                                                                                icon: const Icon(
                                                                                  Icons.close,
                                                                                  size: 20,
                                                                                )),
                                                                          ),
                                                                          Container(
                                                                              margin: EdgeInsets.only(top: 2),
                                                                              child: Image.asset("images/63.png")),
                                                                          Container(
                                                                            margin:
                                                                                EdgeInsets.only(top: 20),
                                                                            child:
                                                                                Text(
                                                                              "Thank You!s",
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(fontSize: 24),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            margin:
                                                                                EdgeInsets.only(top: 17),
                                                                            child:
                                                                                Text(
                                                                              "for your order",
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(fontSize: 14),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                343,
                                                                            height:
                                                                                48,
                                                                            margin:
                                                                                EdgeInsets.only(top: 16),
                                                                            child:
                                                                                Center(
                                                                              child: RaisedButton(
                                                                                textColor: Colors.white,
                                                                                color: Colors.orange,
                                                                                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 14),
                                                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                                                                onPressed: () => Navigator.of(context).pushNamed("MyOrder"),
                                                                                child: Text(
                                                                                  "Track My Order ",
                                                                                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ));

                                                        setState(() {
                                                          // notfiy = val;
                                                          print(notfiy);
                                                        });
                                                      }),
                                                ),
                                              ],
                                            ),
                                          ),
                                          ElevatedButton.icon(
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pushNamed("My order");
                                            },
                                            icon: const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Icon(Icons.add),
                                            ),
                                            label: const Text(
                                              "    Add  Card      ",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                shape:
                                                    const RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.vertical(
                                                          top: Radius.circular(
                                                              100),
                                                          bottom:
                                                              Radius.circular(
                                                                  100)),
                                                ),
                                                primary: Colors.orange,
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 25,
                                                        vertical: 18)),
                                          )
                                        ],
                                      )),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                              ]),
                            ),
                          ),
                        ));
              },
              child: Text(
                "Send Order",
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
