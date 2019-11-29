import 'package:flutter/material.dart';

class AppBarZone extends StatelessWidget {
  final _iconColor = Colors.blueGrey[500];

  @override
  Widget build(BuildContext context) {
    return AppActionsBar(children: <Widget>[
      IconButton(
        icon: Icon(Icons.folder_special, color: _iconColor),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.settings, color: _iconColor),
        onPressed: () {},
      ),
      Row(children: <Widget>[])
    ]);
  }
}

class AppActionsBar extends StatelessWidget {
  const AppActionsBar({@required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Row(children: children));
  }
}
