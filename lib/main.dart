import 'package:application_resturetent/About%20Us.dart';
import 'package:application_resturetent/Checkout.dart';
import 'package:application_resturetent/Desserts.dart';
import 'package:application_resturetent/HomePage.dart';
import 'package:application_resturetent/Inbox.dart';
import 'package:application_resturetent/Interface%20Six.dart';
import 'package:application_resturetent/Latest%20Offers.dart';
import 'package:application_resturetent/Login.dart';
import 'package:application_resturetent/Meals.dart';
import 'package:application_resturetent/Menu.dart';
import 'package:application_resturetent/More.dart';
import 'package:application_resturetent/My%20Order.dart';
import 'package:application_resturetent/New%20Password.dart';
import 'package:application_resturetent/New_Login.dart';
import 'package:application_resturetent/Notifications.dart';
import 'package:application_resturetent/Payment%20Details.dart';
import 'package:application_resturetent/Profile.dart';
import 'package:application_resturetent/Reset%20Password.dart';
import 'package:application_resturetent/Screen/Page1.dart';
import 'package:application_resturetent/Screen/Page2.dart';
import 'package:application_resturetent/Screen/Page3.dart';
import 'package:application_resturetent/Screen/outbding_Screen.dart';
import 'package:application_resturetent/Sign%20Up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Homepage(),
        initialRoute: "Homepage",
        routes: {
          "Homepage": (context) => Homepage(),
          "NewLogin": (context) => NewLogin(),
          "Login": (context) => Login(),
          "SignUp": (context) => SignUp(),
          "ResetPassword": (context) => ResetPassword(),
          "InterfaceSix": (context) => InterfaceSix(),
          "NewPassword": (context) => NewPassword(),
          "outbding_Screen": (context) => outbding_Screen(),
          "Page1": (context) => Page1(),
          "Page2": (context) => page2(),
          "Page3": (context) => Page3(),
          "Meals": (context) => Meals(),
          "Menu": (context) => Menu(),
          "Desserts": (context) => Desserts(),
          "LatestOffers": (context) => LatestOffers(),
          "Profile": (context) => Profile(),
          "More": (context) => More(),
          "PaymentDetails": (context) => PaymentDetails(),
          "Notifications": (context) => Notifications(),
          "AboutUs": (context) => AboutUs(),
          "Inbox": (context) => Inbox(),
          "MyOrder": (context) => MyOrder(),
          "Checkout": (context) => Checkout(),
        });
  }
}
