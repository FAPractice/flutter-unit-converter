import 'package:flutter/material.dart';
import 'package:unit_converter/constants.dart';

import 'Supporting Views/unit_chip.dart';

class VolumeView extends StatefulWidget {
  final String navigationTitle = "Volume";
  final Icon navigationIcon = Icon(Icons.view_in_ar);
  VolumeView({Key? key}) : super(key: key);

  @override
  _VolumeViewState createState() => _VolumeViewState();
}

class _VolumeViewState extends State<VolumeView> {
  var units = [
    'Mililiters',
    'Liters',
    'Fluid Ounces',
    'Pints',
    'Gallons',
    'Cups',
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
