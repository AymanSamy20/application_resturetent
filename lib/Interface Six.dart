import 'package:flutter/material.dart';

class InterfaceSix extends StatefulWidget {
  InterfaceSix({Key? key}) : super(key: key);

  @override
  State<InterfaceSix> createState() => _InterfaceSixState();
}

class _InterfaceSixState extends State<InterfaceSix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 1),
            child: const Text(
              "We have sent an OTP to                 your Mobile",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.black54),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: const Text(
              "Please check your mobile number 071*****12                        continue to reset your password",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                color: Colors.black12,
                margin: const EdgeInsets.only(right: 2, left: 24, top: 120),
                width: 76,
                height: 56,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: '   *   ',
                      hintStyle:
                          const TextStyle(fontSize: 25, color: Colors.black38),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(width: 3))),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.black12,
                margin: const EdgeInsets.only(top: 120),
                width: 76,
                height: 56,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: '   *   ',
                      hintStyle:
                          const TextStyle(fontSize: 25, color: Colors.black38),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(width: 3))),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.black12,
                margin: const EdgeInsets.only(top: 120),
                width: 76,
                height: 56,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: '   *   ',
                      hintStyle:
                          const TextStyle(fontSize: 25, color: Colors.black38),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(width: 3))),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.black12,
                margin: const EdgeInsets.only(top: 120, right: 32),
                width: 76,
                height: 56,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: '   *   ',
                      hintStyle:
                          const TextStyle(fontSize: 25, color: Colors.black38),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(width: 3))),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('NewPassword');
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
          Container(
            margin: const EdgeInsets.only(top: 45),
            child: InkWell(
              onTap: (() {
                Navigator.of(context).pushNamed("ResetPassword");
              }),
              child: RichText(
                text: const TextSpan(
                  text: 'Did\'t  Receive?  ',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Click Here',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red)),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
