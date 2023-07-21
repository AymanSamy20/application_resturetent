import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PaymentDetails extends StatefulWidget {
  PaymentDetails({Key? key}) : super(key: key);

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  var Selected;
  bool notfiy = false;

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
            'Payment Details',
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
          const Padding(
            padding: EdgeInsets.only(right: 100, top: 13),
            child: Text(
              "Customize your payment method",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            color: Colors.black26,
          ),
          const SizedBox(
            height: 15,
          ),
          Card(
            elevation: 50,
            shadowColor: Colors.pink,
            child: Column(
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 27),
                      child: Text(
                        "Cash/Card on delivery",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      width: 150,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.done,
                          color: Colors.pink,
                        )),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 28, right: 23),
                  child: Divider(),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Image.asset("images/58.png"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25, top: 5),
                      child: Text("**** ****"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25, top: 5),
                      child: Text("2187"),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Delete Card",
                        style: TextStyle(fontSize: 16),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(100),
                              bottom: Radius.circular(100)),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 28, right: 20),
                  child: Divider(),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 240),
                  child: Text(" Other Methods"),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          ElevatedButton.icon(
            icon: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(Icons.add),
            ),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                            hintStyle: TextStyle(fontSize: 14),
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
                                            hintStyle: TextStyle(fontSize: 14),
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
                                                padding: const EdgeInsets.only(
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
                                                      Navigator.of(context)
                                                          .pushNamed(
                                                              "Notifications");
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
                                          onPressed: () {},
                                          icon: const Padding(
                                            padding: EdgeInsets.only(left: 10),
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
                                                        bottom: Radius.circular(
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
            label: const Text(
              "    Add Another Credit/Debit Card      ",
              style: TextStyle(fontSize: 16),
            ),
            style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(100), bottom: Radius.circular(100)),
                ),
                primary: Colors.orange,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 18)),
          ),
        ],
      )),
    );
  }
}
