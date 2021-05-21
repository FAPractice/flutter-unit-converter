import 'package:flutter/material.dart';
import 'package:unit_converter/constants.dart';

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
