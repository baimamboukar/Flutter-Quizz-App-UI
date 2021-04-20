import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:get/get.dart';
import 'views/views.dart';

void main() {
  runApp(Knowledgifier());
}

class Knowledgifier extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      allowFontScaling: true,
      designSize: Size(720, 1440),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Knowledgifier",
        theme: ThemeData(
          primarySwatch: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
