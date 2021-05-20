import 'package:flutter/material.dart';

class TimeView extends StatefulWidget {
  final String navigationTitle = "Time";
  final Icon navigationIcon = Icon(Icons.schedule);

  TimeView({Key? key}) : super(key: key);

  @override
  _TimeViewState createState() => _TimeViewState();
}

class _TimeViewState extends State<TimeView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Sup"),
    );
  }
}
