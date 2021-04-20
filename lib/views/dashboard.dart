import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowledgifier/designs/colors.dart';
import 'package:knowledgifier/views/quizz.dart';
import 'package:knowledgifier/widgets/widgets.dart';
import 'package:line_icons/line_icon.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';
import 'package:knowledgifier/widgets/widgets.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Text(
              "Heekma",
              style: TextStyle(color: Colors.amber, fontSize: 22.0),
            ),
            actions: [
              IconButton(icon: Icon(LineIcons.bellAlt), onPressed: null)
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Expanded(
                  child: ListTile(
                      title: Text("The Barve"),
                      subtitle: Text("EmperatorX"),
                      leading: Icon(
                        LineIcons.user,
                        size: 48.0,
                      ),
                      trailing: Column(
                        children: [
                          Icon(
                            LineIcons.medal,
                            color: Colors.amber,
                          ),
                          Text("113K medals")
                        ],
                      )),
                )),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.only(bottom: 8.0, right: 12.0, left: 12.0),
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.0),
                    color: Colors.white),
                child: Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Search something...",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        prefixIcon: Icon(
                          LineIcons.search,
                        ),
                        suffixIcon: Container(
                          height: 48.0,
                          width: 48.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18.0),
                              color: Colors.amber),
                          child: IconButton(
                              icon: Icon(LineIcons.filter), onPressed: null),
                        )),
                    showCursor: true,
                    textInputAction: TextInputAction.go,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 120.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 11,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0)
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            height: 100.h,
                            width: 150.0,
                            color: Colors.white,
                            child: Center(
                              child: Icon(
                                LineIcons.fire,
                                color: Colors.orange,
                                size: 60.0,
                              ),
                            )),
                      );
                    return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: _quizzDomains[index]);
                  }),
            ),
          ),
          SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:
                      InkWell(onTap: () => Get.to(Quizz()), child: Featured()),
                );
              }, childCount: 8)))
        ],
      ),
    );
  }
}

List<QuizzDomain> _quizzDomains = [
  QuizzDomain(
    icon: LineIcons.react,
    domain: "REACT",
    comment: "Front-End dev",
    number: 180,
  ),
  QuizzDomain(
    icon: LineIcons.ember,
    domain: "EMBER",
    comment: "Front-End dev",
    number: 180,
  ),
  QuizzDomain(
    icon: LineIcons.vueJs,
    domain: "VUE JS",
    comment: "Front-End dev",
    number: 180,
  ),
  QuizzDomain(
    icon: LineIcons.javascriptJsSquare,
    domain: "JS",
    comment: "Front-End dev",
    number: 180,
  ),
  QuizzDomain(
    icon: LineIcons.angular,
    domain: "ANGULAR",
    comment: "Front-End dev",
    number: 180,
  ),
  QuizzDomain(
    icon: LineIcons.php,
    domain: "PHP",
    comment: "Back-End dev",
    number: 180,
  ),
  QuizzDomain(
    icon: LineIcons.java,
    domain: "JAVA",
    comment: "Fullstack dev",
    number: 180,
  ),
  QuizzDomain(
    icon: LineIcons.python,
    domain: "PYTHON",
    comment: "Machine Learning dev",
    number: 180,
  ),
  QuizzDomain(
    icon: LineIcons.swift,
    domain: "SWIFT",
    comment: "iOS dev",
    number: 180,
  ),
  QuizzDomain(
    icon: LineIcons.wordpressSimple,
    domain: "WORDPRESS",
    comment: "CMS dev",
    number: 180,
  ),
  QuizzDomain(
    icon: LineIcons.joomlaLogo,
    domain: "JOOMLA",
    comment: "CMS dev",
    number: 180,
  ),
];
