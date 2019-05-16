import 'package:flutter/material.dart';

class ReduxHome extends StatefulWidget {
  @override
  ReduxHomeState createState() => ReduxHomeState();
}

class ReduxHomeState extends State<ReduxHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REDUX APP'),
      ),
    );
  }
}
