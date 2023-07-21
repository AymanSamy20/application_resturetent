import 'package:flutter/material.dart';

class NewLogin extends StatefulWidget {
  NewLogin({Key? key}) : super(key: key);

  @override
  State<NewLogin> createState() => _NewLoginState();
}

class _NewLoginState extends State<NewLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 243, 210, 161),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                        topRight: Radius.circular(300),
                        bottomRight: Radius.circular(100))),
                margin: const EdgeInsets.only(top: 34),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Image.asset(
                    "images/Organe top shape.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300, left: 90),
                child: Image.asset(
                  "images/1.png",
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 45, left: 5),
            child: const Text(
              "Discover the best foods from over 1,000                          restaurants and fast delivery to your doorstep",
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('Login');
              },
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(100)),
                  ),
                  primary: const Color.fromARGB(255, 255, 106, 0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 150, vertical: 20)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('SignUp');
              },
              child: Text("Create an Account"),
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(100)),
                  ),
                  primary: Color.fromARGB(255, 247, 171, 117),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 115, vertical: 20)),
            ),
          ),
        ],
      ),
    );
  }
}
