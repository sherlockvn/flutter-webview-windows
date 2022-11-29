import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

import 'package:webview_windows/webview_windows.dart';
import 'package:window_manager/window_manager.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  // For full-screen example
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(navigatorKey: navigatorKey, home: ExampleBrowser());
  }
}

class ExampleBrowser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HtmlEditor();
  }

}