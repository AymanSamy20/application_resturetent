import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: const Text(
              "New Password",
              style: TextStyle(fontSize: 35, color: Colors.black54),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 18, left: 20),
            child: const Text(
              "Please enter your email to receive a                                  link to  create a new password via email",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 40,
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
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.black12,
                        labelText: '     Password',
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
            height: 25,
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
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.black12,
                        labelText: '     Confirm Password',
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
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('outbding_Screen');
            },
            child: Text(
              "Next",
              style: TextStyle(fontSize: 16),
            ),
            style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(100)),
                ),
                primary: const Color.fromARGB(255, 255, 106, 0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 160, vertical: 20)),
          ),
        ],
      )),
    );
  }
}
