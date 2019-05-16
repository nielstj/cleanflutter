import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cleanapp/models/user.dart';
import 'package:cleanapp/providers/user_provider.dart';

class HomeProvider extends StatefulWidget {
  @override
  HomeProviderState createState() => HomeProviderState();
}

class HomeProviderState extends State<HomeProvider> {
  @override
  Widget build(BuildContext context) {
    final userProv = Provider.of<UserProvider>(context);
    final user = userProv.user;
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(user.name ?? 'No Provider'),
            Text(user.email ?? 'No Provider'),
            FlatButton(
              child: Text('Inject New User'),
              onPressed: () {
                userProv.user = User(
                  name: 'nielstj',
                  email: 'me@nielstj.com',
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
