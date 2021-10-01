import 'package:chat_layout/theme.dart';
import 'package:chat_layout/view/detail_screen.dart';
import 'package:flutter/material.dart';

class ChatTileRead extends StatelessWidget {
  final String name;
  final String profile;
  final String text;
  final String time;

  const ChatTileRead(
      {required this.name,
        required this.profile,
        required this.text,
        required this.time});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen()));
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            profile,
            width: 55.0,
          ),
          SizedBox(
            width: 12.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5,),
              Text(
                name,
                style: blackTextStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                text,
                style:greyTextStyle.copyWith(fontSize: 14),
              ),
            ],
          ),
          Spacer(),
          SizedBox(height: 5.0,),
          Column(
            children: [
              SizedBox(height: 18,),
              Text(
                time,
                style: greyTextStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 8,)
            ],
          ),
        ],
      ),
    );
  }
}
