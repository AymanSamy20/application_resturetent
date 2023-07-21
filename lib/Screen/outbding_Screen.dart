import 'package:application_resturetent/Screen/Page1.dart';
import 'package:application_resturetent/Screen/Page2.dart';
import 'package:application_resturetent/Screen/Page3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class outbding_Screen extends StatefulWidget {
  outbding_Screen({Key? key}) : super(key: key);

  @override
  State<outbding_Screen> createState() => _outbding_ScreenState();
}

class _outbding_ScreenState extends State<outbding_Screen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ///page View

        PageView(
          controller: _controller,
          children: [Page1(), page2(), Page3()],
        ),
        Container(
            margin: EdgeInsets.only(left: 12),
            alignment: Alignment(0, 0.0),
            child: SmoothPageIndicator(
                effect: const ScrollingDotsEffect(
                  activeStrokeWidth: 2.6,
                  activeDotScale: 1.3,
                  maxVisibleDots: 5,
                  dotColor: Colors.black26,
                  activeDotColor: Color.fromARGB(255, 255, 121, 64),
                  radius: 10,
                  spacing: 10,
                  dotHeight: 12,
                  dotWidth: 12,
                ),
                controller: _controller,
                count: 3))
      ],
    ));
  }
}
