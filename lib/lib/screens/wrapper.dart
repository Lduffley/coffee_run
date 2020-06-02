import 'package:coffeerunapp/authenticate/authenticate.dart';
import 'package:coffeerunapp/authenticate/sign_in.dart';
import 'package:coffeerunapp/home/home.dart';
import 'package:coffeerunapp/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return either home or Authenticate widget

    final user = Provider.of<User>(context);
    print(user);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
