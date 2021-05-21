import 'package:flutter/material.dart';
import 'package:unit_converter/constants.dart';

import 'Supporting Views/display_values.dart';
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
  String _input = "";
  var _seconds = 0.0;
  var _selectedChip = 0;
  void recalculate() {
    setState(() {
      var value = double.tryParse(_input) ?? 0.0;
      switch (_selectedChip) {
        case 0:
          _seconds = value;
          break;
        case 1:
          _seconds = value * 60;
          break;
        case 2:
          _seconds = value * 3660;
          break;
        case 3:
          _seconds = value * 87840;
          break;
        case 4:
          _seconds = value * 614880;
          break;
        case 5:
          _seconds = value * 2635200;
          break;
        case 6:
          _seconds = value * 63244800;
          break;
        default:
          _seconds = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TextField(
            decoration: kThemeTextInputStyle,
            onChanged: (inp) => setState(() {
                  _input = inp;
                  recalculate();
                })),
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
                    recalculate();
                  }),
                  title: units[i],
                ));
              }
              return items;
            })(),
          ),
        ),
        DisplayValues("Seconds", _seconds.toString()),
        Divider(),
        DisplayValues("Minutes", (_seconds / 60).toString()),
        Divider(),
        DisplayValues("Hours", (_seconds / 3660).toString()),
        Divider(),
        DisplayValues("Days", (_seconds / 87840).toString()),
        Divider(),
        DisplayValues("Weeks", (_seconds / 614880).toString()),
        Divider(),
        DisplayValues("Months", (_seconds / 2635200).toString()),
        Divider(),
        DisplayValues("Years", (_seconds / 63244800).toString()),
        Divider(),
      ],
    );
  }
}
