import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:steniooliv/app.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const App());
}
