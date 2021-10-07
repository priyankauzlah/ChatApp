import 'package:chat_layout/theme.dart';
import 'package:flutter/material.dart';

class BubbleChatMe extends StatelessWidget {
  final String profile;
  final String text;
  final String time;

  const BubbleChatMe(
      {required this.profile, required this.text, required this.time});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: 20.0,
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0),
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(left: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  text,
                  style: darkGreyTextStyle.copyWith(fontSize: 18),
                ),
                Text(
                  time,
                  style: darkGreyTextStyle.copyWith(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Container(
          margin: EdgeInsets.only(top: 45.0),
          child: Image.asset(
            profile,
            width: 55.0,
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
