import 'package:flutter/material.dart';
import 'package:flutter_app/Components/Lists_page.dart';
import 'package:english_words/english_words.dart';

class OpenPage extends StatefulWidget {
  @override
  _OpenPageState createState() => _OpenPageState();
}

class _OpenPageState extends State<OpenPage> {
  @override
  //ToDo: replace the groups list with data from DB
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
        onTap:(){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ListsPage("ddd")),
          );
        },
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
  _showMaterialDialog() {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
          title: new Text("Material Dialog"),
          content: new Text("Hey! I'm Coflutter!"),
          actions: <Widget>[
            FlatButton(
              child: Text('Close me!'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ));
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
            onPressed: _showMaterialDialog,
            child: Icon(Icons.add),
            backgroundColor: Colors.black,
            tooltip: 'New group',
          ),
        ),
      ),
    );
  }
}

