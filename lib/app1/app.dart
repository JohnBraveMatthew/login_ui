import 'package:flutter/material.dart';

import 'screens/sign_up.dart';

class App extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(primarySwatch: Colors.black),
      debugShowCheckedModeBanner: false,
      title: "UIs",
      home: SignUpUI(),
    );
  }
}
