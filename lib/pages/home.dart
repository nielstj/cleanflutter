import 'package:flutter/material.dart';
import 'package:cleanapp/app/clean_app.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text('user manager'),
              onPressed: () {
                Dependencies.of(context).user.doSomething();
              },
            ),
            FlatButton(
              child: Text('DB manager'),
              onPressed: () {
                Dependencies.of(context).db.doSomething();
              },
            ),
            FlatButton(
              child: Text('network manager'),
              onPressed: () {
                Dependencies.of(context).network.doSomething();
              },
            ),
          ],
        ),
      ),
    );
  }
}
