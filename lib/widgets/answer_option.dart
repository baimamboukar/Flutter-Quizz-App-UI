import 'package:flutter/material.dart';

class answerOption extends StatefulWidget {
  final int index;
  bool isChoosen;
  final String title;
  final String desc;

  answerOption({Key key, this.index, this.isChoosen, this.title, this.desc})
      : super(key: key);
  @override
  _answerOptionState createState() => _answerOptionState();
}

class _answerOptionState extends State<answerOption> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: ListTile(
        tileColor: widget.isChoosen == true ? Colors.amber : Colors.white,
        title: Text(widget.title),
        subtitle: Text(widget.desc),
        trailing: Icon(
          Icons.check_circle,
          color: Colors.white,
        ),
      ),
    );
  }
}
