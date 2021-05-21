import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DisplayValues extends StatelessWidget {
  final String heading, body;

  const DisplayValues(this.heading, this.body, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Clipboard.setData(ClipboardData(text: body));
        final snackBar = SnackBar(content: Text('Copied to Clipboard'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      title: Text(heading, style: Theme.of(context).textTheme.subtitle1),
      subtitle: Text(body, style: Theme.of(context).textTheme.bodyText2),
    );
  }
}
