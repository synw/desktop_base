import 'package:flutter/material.dart';

import 'conf.dart';

void aboutDialog(BuildContext context) {
  showDialog<dynamic>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("About"),
        content: Text(about),
        actions: <Widget>[
          FlatButton(
            child: const Text("Ok"),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
        ],
      );
    },
  );
}
