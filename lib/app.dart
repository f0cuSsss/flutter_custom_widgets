import 'package:flutter/material.dart';

import 'example/widget_list_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets',
      color: Colors.grey[100],
      theme: ThemeData(
        backgroundColor: Colors.grey[100],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[100],
        ),
      ),
      home: const WidgetListScreen(),
    );
  }
}
