import 'package:flutter/material.dart';
import 'package:knowledgifier/designs/designs.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          gradient: amber_pink_gradient),
    );
  }
}
