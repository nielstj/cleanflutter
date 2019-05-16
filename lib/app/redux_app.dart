import 'package:flutter/material.dart';
import 'package:cleanapp/pages/redux_home.dart';

class ReduxApp extends StatelessWidget {

  // final Store<AppState> store = Store<AppState>(

  // )


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.pink,
      ),
      home: Scaffold(
        body: ReduxHome(),
      ),
    );
  }
}
