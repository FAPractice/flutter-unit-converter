import 'package:flutter/material.dart';

class VolumeView extends StatefulWidget {
  final String navigationTitle = "Volume";
  final Icon navigationIcon = Icon(Icons.view_in_ar);
  VolumeView({Key? key}) : super(key: key);

  @override
  _VolumeViewState createState() => _VolumeViewState();
}

class _VolumeViewState extends State<VolumeView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Sup"),
    );
  }
}
