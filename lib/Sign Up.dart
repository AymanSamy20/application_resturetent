import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [],
        ),
        titleTextStyle: const TextStyle(
            color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
        leading: Container(
          margin: EdgeInsets.only(left: 15, top: 10),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('Login');
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 2, left: 20),
              child: const Text(
                "Sign Up",
                style: TextStyle(fontSize: 30, color: Colors.black87),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "   Add your details to login",
                style: TextStyle(fontSize: 16, color: Colors.black38),
              ),
            ),
            const SizedBox(
              height: 30,
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
                          labelText: '     Name',
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
              height: 20,
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
              height: 20,
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
                          labelText: '     Mobile No',
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
              height: 20,
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
                          labelText: '     Address',
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
              height: 20,
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
              height: 20,
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
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('ResetPassword');
              },
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(100)),
                  ),
                  primary: const Color.fromARGB(255, 255, 106, 0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 145, vertical: 20)),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24),
              child: InkWell(
                onTap: (() {
                  Navigator.of(context).pushNamed("Login");
                }),
                child: RichText(
                  text: const TextSpan(
                    text: 'Already have an Account? ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
