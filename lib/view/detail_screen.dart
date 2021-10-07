import 'package:chat_layout/theme.dart';
import 'package:chat_layout/view/bubble_chat_me.dart';
import 'package:chat_layout/view/bubble_chat_sender.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueTooLightColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 30.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(16.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: Image.asset(
                      'assets/images/jakartafair.png',
                      width: 70.0,
                      height: 70.0,
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: Text(
                          'Jakarta Fair',
                          style: blackTextStyle.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: Text(
                          '14,209 members',
                          style: greyTextStyle.copyWith(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: Image.asset(
                      'assets/images/btn_call.png',
                      width: 75.0,
                      height: 75.0,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  BubbleChatSender(
                    profile: "assets/images/joshuer.png",
                    text: "How are ya guys?",
                    time: "2:30",
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  BubbleChatSender(
                      profile: "assets/images/bentley.png",
                      text: "Find here :P",
                      time: "3:11"),
                  SizedBox(
                    height: 30.0,
                  ),
                  BubbleChatMe(
                      profile: "assets/images/sabrina_nooutline.png",
                      text:
                          "Thinking about how to deal \nwith this client from hell...",
                      time: "22:08"),
                  SizedBox(
                    height: 30.0,
                  ),
                  BubbleChatSender(
                      profile: "assets/images/gabriella.png",
                      text: "Love them",
                      time: "23:11"),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              margin: EdgeInsets.only(
                  right: 20.0, left: 20.0, top: 10.0, bottom: 10.0),
              padding: EdgeInsets.only(right: 20.0, left: 20.0),
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      'Type message ...',
                      style: greyTextStyle.copyWith(fontSize: 18),
                    ),
                    Spacer(),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      child: Image.asset("assets/images/send.png"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
