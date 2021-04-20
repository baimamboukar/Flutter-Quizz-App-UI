import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 60.0,
                          child: FlutterLogo(
                            size: 48.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Column(
                        children: [
                          CircleAvatar(
                              child: Icon(
                            Icons.star,
                          )),
                          Text("910 Highest Score")
                        ],
                      )),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        children: [
                          CircleAvatar(child: Icon(Icons.gamepad)),
                          Text("258 Games won"),
                        ],
                      )),
                ],
              ),
            )),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    actionButton(),
                    actionButton(),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Achivements"), Text("120")],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(12.0),
              sliver: SliverToBoxAdapter(
                child: Container(
                  height: 120.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      achievmentBox(
                        "Challenge lead",
                        "15",
                        Icon(
                          LineIcons.trophy,
                          color: Colors.amber,
                          size: 60.0,
                        ),
                      ),
                      achievmentBox(
                        "Come backs",
                        "158",
                        Icon(
                          LineIcons.medal,
                          color: Colors.indigo.shade300,
                          size: 60.0,
                        ),
                      ),
                      achievmentBox(
                        "Lucky",
                        "54",
                        Icon(
                          LineIcons.medal,
                          color: Colors.blueAccent,
                          size: 60.0,
                        ),
                      ),
                      achievmentBox(
                        "Leader",
                        "10",
                        Icon(
                          LineIcons.medal,
                          color: Colors.amber,
                          size: 60.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: Divider())
          ],
        ),
      ),
    );
  }

  Container actionButton() {
    return Container(
      height: 40.0,
      width: 110.0,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(6.0)),
      child: TextButton.icon(
          onPressed: null,
          icon: Icon(LineIcons.editAlt),
          label: Text("New quizz")),
    );
  }

  Container achievmentBox(String title, String count, Icon icon) {
    return Container(
      height: 100.0,
      width: 120.0,
      child: Card(
        elevation: 6.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(title),
              icon,
              Align(
                alignment: Alignment.bottomRight,
                child: Text(count),
              )
            ],
          ),
        ),
      ),
    );
  }
}
