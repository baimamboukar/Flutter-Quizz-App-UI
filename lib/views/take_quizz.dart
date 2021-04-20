import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';
import 'package:knowledgifier/widgets/widgets.dart';
import 'package:line_icons/line_icons.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Takequizz extends StatefulWidget {
  @override
  _TakequizzState createState() => _TakequizzState();
}

class _TakequizzState extends State<Takequizz> {
  var _percent = 0.0;
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Swiper(
      index: 2,
      itemCount: 10,
      itemWidth: MediaQuery.of(context).size.width * 0.8,
      itemBuilder: (BuildContext context, int index) {
        return Center(
          child: Container(
              child: Column(
            children: [
              LinearPercentIndicator(
                fillColor: Colors.black,
                progressColor: Colors.amber,
                width: MediaQuery.of(context).size.width,
                padding: null,
                lineHeight: 15.0,
                animation: true,
                restartAnimation: true,
                percent: _percent,
                center: Text("Index ${index.toString()}"),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.40,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircularCountDownTimer(
                              isReverse: true,
                              isReverseAnimation: true,
                              textFormat: "Time",
                              width: 100.0,
                              height: 100.0,
                              strokeWidth: 6.5,
                              duration: 20,
                              fillColor: Colors.amber,
                              ringColor: Colors.white24),
                          Text(
                            "1-Vue JS creator",
                            style:
                                TextStyle(fontSize: 20.sp, color: Colors.white),
                          ),
                          TextButton.icon(
                              onPressed: null,
                              icon: Icon(
                                LineIcons.arrowRight,
                                color: Colors.amber,
                              ),
                              label: Text(
                                "Skip",
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                      Text(
                        "Lorem ipsum dolor si amet do set consectur de la  na lora what is this again just to try ?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(24)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: options.length,
                      itemBuilder: (BuildContext context, int index) {
                        var option = options[index];
                        return InkWell(
                          onTap: () {
                            option.isChoosen = true;
                          },
                          child: options[index],
                        );
                      })),
              SizedBox(
                height: 20.0,
              ),
            ],
          )),
        );
      },
    )));
  }
}

List<answerOption> options = [
  answerOption(
    index: 1,
    isChoosen: false,
    title: "Larry Page",
    desc: "Goolge co-founder",
  ),
  answerOption(
    index: 2,
    isChoosen: false,
    title: "Evan You",
    desc: "Ex google employee",
  ),
  answerOption(
    index: 2,
    isChoosen: false,
    title: "Jeff Tify",
    desc: "Rectifly author",
  ),
  answerOption(
    index: 3,
    isChoosen: false,
    title: "Dennis Ritchie",
    desc: "C language author",
  )
];
