import 'package:flutter/material.dart';

class DisplayValues extends StatelessWidget {
  final String heading, body;

  const DisplayValues(this.heading, this.body, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(heading, style: Theme.of(context).textTheme.bodyText1),
        Text(body, style: Theme.of(context).textTheme.bodyText2),
      ],
    );
  }
}
