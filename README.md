# Flutter desktop base

A starting base for desktop apps. Skeleton desktop app for [Go Flutter](https://github.com/go-flutter-desktop/go-flutter) based on the [Desktopia](https://github.com/synw/desktopia) package

## Usage

### Configure the layout

Open `desktop.dart` to declare your main app layout

### Set the app zones

Go into the `zones` folder and set your app zones widgets. Declare the zones in `appzones.dart`

### Set the menu

The main menu bar is configurable in `menu.dart`

### Update a zone

Provide the name of the zone and a widget:

   ```dart
   zones.update("sidebar", MyWidget());
   ```