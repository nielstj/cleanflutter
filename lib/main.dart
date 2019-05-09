import 'package:flutter/material.dart';
import 'package:cleanapp/app/clean_app.dart';

import 'package:cleanapp/managers/user_manager.dart';
import 'package:cleanapp/managers/db_manager.dart';
import 'package:cleanapp/managers/network_manager.dart';

void main() => runApp(
      Dependencies(
        user: UserManager(),
        network: NetworkManager(),
        db: DBManager(),
        child: CleanApp(),
      ),
    );
// runApp(CleanApp());
