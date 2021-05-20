import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LengthView extends StatefulWidget {
  final String navigationTitle = "Length";
  final Icon navigationIcon = Icon(Icons.straighten);
  LengthView({Key? key}) : super(key: key);

  @override
  _LengthViewState createState() => _LengthViewState();
}

class _LengthViewState extends State<LengthView> {
  var _selectedIndex = 'children';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          TextField(
            decoration: InputDecoration(hintText: "Enter Length"),
          ),
          Wrap(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ChoiceChip(selected: true, label: Text("Meter"))),
              Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ChoiceChip(selected: false, label: Text("Kilometer"))),
              Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ChoiceChip(selected: false, label: Text("Inch"))),
              Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ChoiceChip(selected: false, label: Text("Yard"))),
              Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ChoiceChip(selected: false, label: Text("Mile"))),
            ],
          )
        ],
        padding: const EdgeInsets.all(16.0),
      ),
      // ),
    );
  }
}
