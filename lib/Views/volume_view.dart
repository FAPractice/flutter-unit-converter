import 'package:flutter/material.dart';
import 'package:unit_converter/constants.dart';

import 'Supporting Views/display_values.dart';
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
  String _input = "";
  var _mililiters = 0.0;
  var _selectedChip = 0;
  void recalculate() {
    setState(() {
      var value = double.tryParse(_input) ?? 0.0;
      switch (_selectedChip) {
        case 0:
          _mililiters = value;
          break;
        case 1:
          _mililiters = value * 1000;
          break;
        case 2:
          _mililiters = value * 29.5735;
          break;
        case 3:
          _mililiters = value * 473.176;
          break;
        case 4:
          _mililiters = value * 3785.41;
          break;
        case 5:
          _mililiters = value * 236.588;
          break;
        default:
          _mililiters = 0;
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
        DisplayValues("Mililiters", _mililiters.toString()),
        Divider(),
        DisplayValues("Liters", (_mililiters / 1000).toString()),
        Divider(),
        DisplayValues("Fluid Ounces", (_mililiters / 29.5735).toString()),
        Divider(),
        DisplayValues("Pints", (_mililiters / 473.176).toString()),
        Divider(),
        DisplayValues("Gallons", (_mililiters / 3785.41).toString()),
        Divider(),
        DisplayValues("Cups", (_mililiters / 236.588).toString()),
        Divider(),
      ],
    );
  }
}
