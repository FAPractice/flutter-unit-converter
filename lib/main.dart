import 'package:flutter/material.dart';

import 'package:unit_converter/Views/Supporting%20Views/sidebar_view.dart';
import 'package:unit_converter/Views/Supporting%20Views/tabbed_view.dart';

void main() {
  runApp(UnitConverter());
}

class UnitConverter extends StatelessWidget {
  static var enableDevicePreview = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      darkTheme: ThemeData(primarySwatch: Colors.indigo),
      home: LayoutBuilder(builder: (context, constraints) {
        return constraints.maxHeight > 600 && constraints.maxWidth > 800
            ? SidebarView()
            : TabbedView();
      }),
    );
  }
}
