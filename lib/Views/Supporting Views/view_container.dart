import 'package:flutter/material.dart';

class ViewContainer extends StatelessWidget {
  final Widget item;
  final String navigationTitle;

  const ViewContainer(
    this.item,
    this.navigationTitle, {
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          navigationTitle,
          style: TextStyle(color: Theme.of(context).textTheme.bodyText2?.color),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: item,
    );
  }
}
