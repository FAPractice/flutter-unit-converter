import 'package:flutter/material.dart';
import 'package:unit_converter/constants.dart';

import 'Supporting Views/unit_chip.dart';

class TimeView extends StatefulWidget {
  final String navigationTitle = "Time";
  final Icon navigationIcon = Icon(Icons.schedule);

  TimeView({Key? key}) : super(key: key);

  @override
  _TimeViewState createState() => _TimeViewState();
}

class _TimeViewState extends State<TimeView> {
  var units = [
    'Seconds',
    'Minutes',
    'Hours',
    'Days',
    'Weeks',
    'Months',
    'Years',
  ];
  var _selectedChip = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TextField(decoration: kThemeTextInputStyle),
        Divider(),
        Padding(
          padding: kListItemPadding,
          child: Wrap(
            children: (() {
              var items = <Widget>[];
              for (var i = 0; i < units.length; i++) {
                items.add(UnitChip(
                  _selectedChip,
                  i,
                  (val) => setState(() {
                    _selectedChip = i;
                  }),
                  title: units[i],
                ));
              }
              return items;
            })(),
          ),
        )
      ],
    );
  }
}
