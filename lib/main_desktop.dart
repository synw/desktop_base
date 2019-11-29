import 'package:desktopia/desktopia.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'conf.dart';
import 'desktop.dart';
import 'store.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  initConf();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <SingleChildCloneableWidget>[
        StreamProvider<AppZoneStore>.value(
          initialData: AppZoneStore(),
          value: AppZoneStore.stream(),
        ),
        StreamProvider<Store>.value(
          initialData: Store(),
          value: stateUpdateController.stream,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DesktopPage(),
      ),
    );
  }
}
