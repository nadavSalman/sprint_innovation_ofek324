import 'package:flutter/material.dart';

class ListsPage extends StatelessWidget {
  var _babun = "";


  ListsPage(this._babun);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(this._babun),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}