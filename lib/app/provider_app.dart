import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cleanapp/providers/user_provider.dart';
import 'package:cleanapp/pages/provider_home.dart';

class ProviderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserProvider>(
      builder: (context) => UserProvider(),
      child: MaterialApp(
        title: 'Provider App',
        theme: ThemeData(
          primaryColor: Colors.blue,
          accentColor: Colors.purple,
        ),
        home: Scaffold(
          body: HomeProvider(),
        ),
      ),
    );
  }
}
