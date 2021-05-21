import 'package:flutter/material.dart';

class DisplayValues extends StatelessWidget {
  final String heading, body;

  const DisplayValues(this.heading, this.body, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(heading, style: Theme.of(context).textTheme.subtitle1),
      subtitle: Text(body, style: Theme.of(context).textTheme.bodyText2),
    );
  }
}
