import 'package:flutter/material.dart';
import 'package:flutter_app/Components/Floating_plus_button.dart';
import 'package:english_words/english_words.dart';

class OpenPage extends StatefulWidget {
  @override
  _OpenPageState createState() => _OpenPageState();
}

class _OpenPageState extends State<OpenPage> {
  @override
  //ToDo: replacethe groups list with data from DB
  final List<String> groups = [
    "hamagnivim",
    "ohad",
    "ronen",
    "yuval",
    "hadas",
    "hi",
    "ohad",
    "ronen",
    "yuval",
    "hadas"
  ];

  Widget _buildRow(BuildContext context, int index) {
    if (index.isEven) {
      return ListTile(
        title: Text(
          groups[index ~/ 2].toUpperCase(),
        ),
      );
    } else {
      return Divider();
    }
  }

  Widget _buildOptions() {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemBuilder: _buildRow,
      itemCount: groups.length * 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meקונה',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
        centerTitle: true,
        // actions: [
        //   IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
        // ],
      ),
      body: _buildOptions(),
      floatingActionButton: Container(
        height: 80.0,
        width: 80.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            backgroundColor: Colors.black,
            tooltip: 'New group',
          ),
        ),
      ),
    );
  }
}
