import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowledgifier/views/views.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class Quizz extends StatefulWidget {
  @override
  _QuizzState createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              actions: [
                IconButton(icon: Icon(LineIcons.share), onPressed: null)
              ],
              stretch: true,
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: [
                  StretchMode.fadeTitle,
                  StretchMode.blurBackground,
                  StretchMode.zoomBackground
                ],
                title: Text(
                  "IceLands",
                  style: TextStyle(fontSize: 15.0),
                ),
                background: Container(
                  color: Colors.amber.shade300,
                ),
              )),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: FlutterLogo(),
                      ),
                      title: Text("Author"),
                      subtitle: Text("Brave Mentor"),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                          "Taken by"), //display the number in same line and users avatar in subtitle
                      subtitle: Text("112k persons"),
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        LineIcons.heartbeat,
                        color: Colors.red,
                      ),
                      Text("15 kiff")
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 220.0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildQuizzInfo(
                          context,
                          Icon(
                            LineIcons.globe,
                            color: Colors.green,
                            size: 48.0,
                          ),
                          "Domain",
                          "Geography"),
                      _buildQuizzInfo(
                          context,
                          Icon(
                            LineIcons.questionCircle,
                            color: Colors.red,
                            size: 48.0,
                          ),
                          "Questions",
                          "12")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildQuizzInfo(
                          context,
                          Icon(
                            Icons.alarm,
                            color: Colors.black45,
                            size: 48.0,
                          ),
                          "Timed",
                          "12min"),
                      _buildQuizzInfo(
                          context,
                          Icon(
                            LineIcons.trophy,
                            color: Colors.amber,
                            size: 48.0,
                          ),
                          "Level",
                          "Easy")
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Tags cloud"),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(Takequizz()),
        child: Icon(LineIcons.gofore),
      ),
    );
  }

  Container _buildQuizzInfo(
      BuildContext context, Icon icon, String title, String desc) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5 - 20.0,
      height: 100.0,
      child: Card(
        elevation: 6.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text(title.toString()), Text(desc.toString())],
              ),
              icon
            ],
          ),
        ),
      ),
    );
  }
}
