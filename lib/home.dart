import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:health/reusable_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages = [
    ReusableContainer(
      color: Color(0xFFF75928),
      txtHeading: 'Workout',
      fontColor: Colors.white,
      img: Image.asset(
        'images/i1.png',
        height: 300.0,
      ),
      txtTopic: 'Stay',
      txtTopicSub: 'Healthy',
      colorTopic: Colors.white,
      txtSubTopic: 'A healthy mind in a healthy body',
      iconColorfirst: Color(0xFFFFFFFF),
      iconColorSecond: Color(0xFFFE9A6F),
    ),
    ReusableContainer(
      color: Colors.white,
      txtHeading: 'Workout',
      fontColor: Color(0xFF06093A),
      img: Image.asset(
        'images/i2.png',
        height: 300.0,
      ),
      txtTopic: 'Customize',
      txtTopicSub: 'Your Workout',
      colorTopic: Color(0xFF06093A),
      txtSubTopic: 'Here you can create workout plan',
      iconColorfirst: Color(0xFFFDDDD3),
      iconColorSecond: Color(0xFFF65625),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        fullTransitionValue: 600.0,
        slideIconWidget: Icon(Icons.arrow_back_ios),
        waveType: WaveType.liquidReveal,
      ),
    );
  }
}
