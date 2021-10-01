import 'package:chat_layout/theme.dart';
import 'package:chat_layout/view/chat_tile.dart';
import 'package:chat_layout/view/chat_tile_read.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                        margin: EdgeInsets.only(top: 50.0, bottom: 10.0),
                        width: 150.0,
                        height: 150.0,
                        child: Image.asset('assets/images/sabrina.png')),
                  ),
                  Text(
                    'Sabrina Carpenter',
                    style: whiteTextStyle.copyWith(
                        fontSize: 24.0, fontWeight: FontWeight.w400),
                  ),
                  Text('Travel Freelancer',
                      style: lightBlueTextStyle.copyWith(
                          fontWeight: FontWeight.w300, fontSize: 18.0)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              width: double.infinity,
              height: 590,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0)),
                  color: Colors.white),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Friends",
                      style: blackTextStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ChatTile(
                        name: "Joshuer",
                        profile: "assets/images/joshuer.png",
                        text: "Sorry, you’re not my ty...",
                        time: "Now"),
                    SizedBox(
                      height: 20,
                    ),
                    ChatTileRead(
                        name: "Gabriella",
                        profile: "assets/images/gabriella.png",
                        text: "I saw it clearly and mig...",
                        time: "2:30"),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Groups",
                      style: blackTextStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ChatTileRead(
                        name: "Jakarta Fair",
                        profile: "assets/images/jakartafair.png",
                        text: "Why does everyone ca...",
                        time: "11:11"),
                    SizedBox(
                      height: 20,
                    ),
                    ChatTile(
                        name: "Angga",
                        profile: "assets/images/angga.png",
                        text: "Here here we can go...",
                        time: "7:11"),
                    SizedBox(
                      height: 20,
                    ),
                    ChatTile(
                        name: "Bentley",
                        profile: "assets/images/bentley.png",
                        text: "The car which does not...",
                        time: "7:11"),
                    SizedBox(
                      height: 10,
                    ),
                    Center(child: Image.asset("assets/images/btn.png", width: 100, height: 100,)),
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
