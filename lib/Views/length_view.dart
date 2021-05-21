import 'package:flutter/material.dart';
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
