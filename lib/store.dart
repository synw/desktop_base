import 'dart:async';

import 'state.dart';

final AppState appState = AppState();

final StreamController<Store> stateUpdateController = StreamController<Store>();

void updateState(StateUpdateType type, dynamic value) =>
    stateUpdateController.add(Store.update(type, value));

enum StateUpdateType { a }

class Store {
  Store();

  AppState state = appState;

  Store.update(StateUpdateType type, dynamic value) {
    switch (type) {
      case StateUpdateType.a:
        break;
    }
  }
}
