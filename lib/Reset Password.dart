import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 1),
            child: const Text(
              "Reset Password",
              style: TextStyle(fontSize: 30, color: Colors.black54),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 18),
            child: const Text(
              "Please enter your email to receive a                                  link to  create a new password via email",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 80,
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
                        labelText: '     Email',
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
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('InterfaceSix');
            },
            child: Text(
              "Send",
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
