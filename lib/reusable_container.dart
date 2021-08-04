import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer({required this.color,required this.fontColor,required this.img,
  required this.txtHeading,required this.txtTopic, required this.txtTopicSub, 
  required this.colorTopic, required this.txtSubTopic, required this.iconColorfirst,
  required this.iconColorSecond});

  late final Color color;
  late final String txtHeading;
  late final String txtTopic;
  late final String txtSubTopic;
  late final String txtTopicSub;
  late final Color colorTopic;
  late final Color fontColor;
  late final Color iconColorfirst;
  late final Color iconColorSecond;
  late final Image img;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text(
                  txtHeading,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: fontColor,
                  ),
                ),
                SizedBox(
                  width: 150.0,
                ),
                Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60.0,
          ),
          img,
          SizedBox(
            height: 60.0,
          ),
          Text(
            txtTopic,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 60.0,
              color: colorTopic,
            ),
          ),
          Text(
            txtTopicSub,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 60.0,
              color: colorTopic,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            txtSubTopic,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.blueGrey,
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.circle,
                color: iconColorfirst,
              ),
              Icon(
                Icons.circle,
                color: iconColorSecond,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
