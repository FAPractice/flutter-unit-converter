import 'package:flutter/material.dart';
import 'package:unit_converter/constants.dart';

import 'Supporting Views/display_values.dart';
import 'Supporting Views/unit_chip.dart';

class TemperatureView extends StatefulWidget {
  final String navigationTitle = "Temperature";
  final Icon navigationIcon = Icon(Icons.thermostat);

  TemperatureView({Key? key}) : super(key: key);

  @override
  _TemperatureViewState createState() => _TemperatureViewState();
}

class _TemperatureViewState extends State<TemperatureView> {
  var units = [
    'Cesius',
    'Fahrenheit',
    'kelvin',
  ];
  String _input = "";
  var _celsius = 0.0;
  var _selectedChip = 0;
  void recalculate() {
    setState(() {
      var value = double.tryParse(_input) ?? 0.0;
      switch (_selectedChip) {
        case 0:
          _celsius = value;
          break;
        case 1:
          _celsius = (value - 32) * 5 / 9;
          break;
        case 2:
          _celsius = value - 273.15;
          break;
        default:
          _celsius = 0;
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
        DisplayValues("Celsius", _celsius.toString()),
        Divider(),
        DisplayValues("Farenheit", ((_celsius * 9 / 5) + 32).toString()),
        Divider(),
        DisplayValues("Kelvin", (_celsius + 273.15).toString()),
        Divider(),
      ],
    );
  }
}
