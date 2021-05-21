import 'package:flutter/material.dart';
import 'package:unit_converter/Views/Supporting%20Views/display_values.dart';
import 'package:unit_converter/constants.dart';
import 'Supporting Views/unit_chip.dart';

class LengthView extends StatefulWidget {
  final String navigationTitle = "Length";
  final Icon navigationIcon = Icon(Icons.straighten);
  LengthView({Key? key}) : super(key: key);

  @override
  _LengthViewState createState() => _LengthViewState();
}

class _LengthViewState extends State<LengthView> {
  var units = [
    'Meter',
    'Kilometer',
    'Miles',
    'Inches',
    'Yards',
  ];
  String _input = "";
  var _meters = 0.0;
  var _selectedChip = 0;
  void recalculate() {
    setState(() {
      var value = double.tryParse(_input) ?? 0.0;
      switch (_selectedChip) {
        case 0:
          _meters = value;
          break;
        case 1:
          _meters = value * 1000;
          break;
        case 2:
          _meters = value * 1609.34;
          break;
        case 3:
          _meters = value / 39.37;
          break;
        case 4:
          _meters = value / 1.094;
          break;
        default:
          _meters = 0;
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
        DisplayValues("Meters", _meters.toString()),
        Divider(),
        DisplayValues("Kilometers", (_meters / 1000).toString()),
        Divider(),
        DisplayValues("Miles", (_meters / 1609.34).toString()),
        Divider(),
        DisplayValues("Inches", (_meters * 39.37).toString()),
        Divider(),
        DisplayValues("Yards", (_meters * 1.094).toString()),
        Divider(),
      ],
    );
  }
}
