import 'package:flutter/material.dart';

class SidebarView extends StatefulWidget {
  @override
  _SidebarViewState createState() => _SidebarViewState();
}

class _SidebarViewState extends State<SidebarView> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            labelType: NavigationRailLabelType.selected,
            selectedIndex: index,
            onDestinationSelected: (val) => setState(() => index = val),
            destinations: [
              NavigationRailDestination(
                label: Text("Length"),
                icon: Icon(Icons.straighten),
              ),
              NavigationRailDestination(
                label: Text("Volume"),
                icon: Icon(Icons.view_in_ar),
              ),
              NavigationRailDestination(
                label: Text("Temperature"),
                icon: Icon(Icons.thermostat),
              ),
              NavigationRailDestination(
                label: Text("Time"),
                icon: Icon(Icons.schedule),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
