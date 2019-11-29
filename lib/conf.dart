import 'dart:async';
import 'package:desktopia/desktopia.dart';
import 'zones/appzones.dart';

String appName = "My app";
String about = "Made by me: https://github.com/me";

ConfigManager conf;
final AppZoneStore zones = AppZoneStore();

final _readyCompleter = Completer<void>();

Future<void> onConfReady = _readyCompleter.future;

Future<void> initConf() async {
  conf = ConfigManager.auto(appName, verbose: true)..read();
  zones.init(appZones);
  _readyCompleter.complete();
}
