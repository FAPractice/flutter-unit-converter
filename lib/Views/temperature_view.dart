import 'package:flutter/material.dart';

class TemperatureView extends StatefulWidget {
  final String navigationTitle = "Temperature";
  final Icon navigationIcon = Icon(Icons.thermostat);

  TemperatureView({Key? key}) : super(key: key);

  @override
  _TemperatureViewState createState() => _TemperatureViewState();
}

class _TemperatureViewState extends State<TemperatureView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Sup"),
      // ),
    );
  }
}
