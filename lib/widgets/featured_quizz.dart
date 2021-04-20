import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.0)),
      child: Card(
        elevation: 1.5,
        shadowColor: Colors.black,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              LineIcons.vueJs,
              color: Colors.green,
            ),
          ),
          title: Text("Vue JS horizon"),
          subtitle: Text("112K responders"),
          trailing: CircleAvatar(
            child: Icon(
              LineIcons.medal,
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}
