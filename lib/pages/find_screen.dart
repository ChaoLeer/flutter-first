import 'package:flutter/material.dart';

class FindScreen extends StatelessWidget {
  const FindScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Find')),
      body: Center(child: Text('Find Body'),),
    );
  }
}