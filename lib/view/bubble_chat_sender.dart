import 'package:chat_layout/theme.dart';
import 'package:flutter/material.dart';

class BubbleChatSender extends StatelessWidget {
  final String profile;
  final String text;
  final String time;

  const BubbleChatSender(
      {required this.profile, required this.text, required this.time});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 30,),
        Container(
          margin: EdgeInsets.only(top: 45.0),
          child: Image.asset(
            profile,
            width: 55.0,
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            ),
          ),

          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
      ],
    );
  }
}
