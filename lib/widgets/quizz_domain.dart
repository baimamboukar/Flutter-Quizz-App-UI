import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class QuizzDomain extends StatelessWidget {
  final IconData icon;
  final String domain;
  final String comment;
  final int number;

  const QuizzDomain(
      {Key key, this.icon, this.domain, this.comment, this.number})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Container(
        height: 120.0,
        width: 175.0,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(icon, size: 40.0, color: Colors.blueGrey),
                Text(
                  "$number Quizz",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Text(
              domain,
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            Text(comment)
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
      ),
    );
  }
}
