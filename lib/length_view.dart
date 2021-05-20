import 'package:flutter/material.dart';

class LengthView extends StatelessWidget {
  final String tempTitle;

  const LengthView({Key? key, required this.tempTitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Unit Converter",
          style: TextStyle(color: Theme.of(context).textTheme.bodyText2?.color),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: Center(
        child: Text("$tempTitle View"),
      ),
    );
  }
}
