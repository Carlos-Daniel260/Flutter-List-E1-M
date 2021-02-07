import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  @required
  final String username;

  const UserPage({this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xfff4735e),
        title: Text("User info"),
      ),
      body: Center(
        child: Text(
          this.username,
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
