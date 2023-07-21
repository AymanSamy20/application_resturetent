import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, 'NewLogin');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.only(
                    bottom: 50, left: 20, top: 10, right: 20),
                margin: const EdgeInsets.only(top: 35),
                decoration: const BoxDecoration(
                    // color: Color.fromARGB(136, 134, 11, 11),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                        // topLeft: Radius.circular(300),
                        bottomRight: Radius.circular(100))),
                child: Image.asset("images/17.png")),
            const SizedBox(
              height: 35,
            ),
            Container(
              child: Image.asset("images/1.png"),
            )
          ],
        ),
      ),
    );
  }
}
