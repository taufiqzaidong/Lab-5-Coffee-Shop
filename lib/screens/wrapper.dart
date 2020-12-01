import 'package:coffee_app/models/user.dart';
import 'package:coffee_app/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:coffee_app/screens/home/home.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserId>(context);

    //return either home or authenticate
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
