import 'package:flutter/material.dart';
import 'package:unit_converter/tabbed_view.dart';

void main() {
  runApp(UnitConverter());
}

class UnitConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: TabbedView(),
    );
  }
}
