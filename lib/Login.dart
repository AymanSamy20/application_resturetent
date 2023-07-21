import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
        margin: const EdgeInsets.only(top: 60, left: 20),
        child: const Text(
          "Login",
          style: TextStyle(fontSize: 30, color: Colors.black87),
        ),
      ),
      const SizedBox(
        height: 12,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 5),
        child: Text(
          "Add your details to login",
          style: TextStyle(fontSize: 16, color: Colors.black38),
        ),
      ),
      const SizedBox(
        height: 40,
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.purple),
                cursorColor: Colors.purple,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.black12,
                    labelText: 'Login',
                    labelStyle: const TextStyle(color: Colors.black38),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.purple.withOpacity(.05)),
                        borderRadius: BorderRadius.circular(30).copyWith(
                            bottomRight: const Radius.circular(0),
                            topLeft: const Radius.circular(0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.purple.withOpacity(.05)),
                        borderRadius: BorderRadius.circular(30).copyWith(
                            bottomRight: const Radius.circular(0),
                            topLeft: const Radius.circular(0)))),
              )
            ],
          )),
      const SizedBox(
        height: 30,
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                obscureText: true,
                style: const TextStyle(color: Colors.purple),
                cursorColor: Colors.purple,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.black12,
                    labelText: '     Password',
                    labelStyle: const TextStyle(color: Colors.black38),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.purple.withOpacity(.05)),
                        borderRadius: BorderRadius.circular(30).copyWith(
                            bottomRight: const Radius.circular(0),
                            topLeft: const Radius.circular(0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.purple.withOpacity(.05)),
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
        onPressed: () {},
        child: Text("Login"),
        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(100)),
            ),
            primary: const Color.fromARGB(255, 255, 106, 0),
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 20)),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 30),
        child: Text("Forgot your password?"),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 50, right: 12),
        child: Text("or Login With"),
      ),
      const SizedBox(
        height: 40,
      ),
      ElevatedButton.icon(
        icon: const Icon(Icons.facebook),
        onPressed: () {},
        label: Text("     Login with Facebook"),
        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(100)),
            ),
            primary: const Color.fromARGB(255, 4, 96, 171),
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 18)),
      ),
      const SizedBox(
        height: 40,
      ),
      ElevatedButton.icon(
        icon: const Icon(Icons.g_translate_sharp),
        onPressed: () {},
        label: const Text("       Login with Google          "),
        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(100)),
            ),
            primary: const Color.fromARGB(255, 242, 6, 6),
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 18)),
      ),
      const SizedBox(
        height: 25,
      ),
      Container(
        margin: const EdgeInsets.only(top: 24),
        child: InkWell(
          onTap: (() {
            Navigator.of(context).pushNamed("SignUp");
          }),
          child: RichText(
            text: const TextSpan(
              text: 'Don\'t  have an Account? ',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red)),
              ],
            ),
          ),
        ),
      ),
    ])));
  }
}
