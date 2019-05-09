import 'package:flutter/material.dart';
import 'package:cleanapp/pages/home.dart';

import 'package:cleanapp/managers/user_manager.dart';
import 'package:cleanapp/managers/db_manager.dart';
import 'package:cleanapp/managers/network_manager.dart';

class Dependencies extends InheritedWidget {
  const Dependencies({
    Key key,
    @required this.db,
    @required this.user,
    @required this.network,
    @required Widget child,
  })  : assert(db != null),
        assert(user != null),
        assert(network != null),
        assert(child != null),
        super(key: key, child: child);

  final UserManager user;
  final DBManager db;
  final NetworkManager network;

  static Dependencies of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(Dependencies) as Dependencies;
  }

  @override
  bool updateShouldNotify(Dependencies old) => false;
}

class CleanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.pink,
      ),
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
