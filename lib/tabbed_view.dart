import 'package:flutter/material.dart';

class TabbedView extends StatefulWidget {
  @override
  _TabbedViewState createState() => _TabbedViewState();
}

class _TabbedViewState extends State<TabbedView> {
  var index = 0;

  List<Widget> items = [
    Scaffold(
        appBar: AppBar(
          title: Text(
            "Length",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(child: Text("Length View"))),
    Scaffold(
        appBar: AppBar(
          title: Text(
            "Volume",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(child: Text("Volume View"))),
    Scaffold(
        appBar: AppBar(
          title: Text(
            "Temperature",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(child: Text("Temperature View"))),
    Scaffold(
        appBar: AppBar(
          title: Text(
            "Time",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(child: Text("Time View"))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: items[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (val) => setState(() => index = val),
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            label: "Length",
            icon: Icon(Icons.rule),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            label: "Volume",
            icon: Icon(Icons.rule),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            label: "Temperature",
            icon: Icon(Icons.rule),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            label: "Time",
            icon: Icon(Icons.rule),
          ),
        ],
      ),
    );
  }
}
