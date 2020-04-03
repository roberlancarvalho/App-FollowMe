import 'package:flutter/material.dart';

class ItemAddPage extends StatefulWidget {  
  @override
  _ItemAddPageState createState() => _ItemAddPageState();
}

class _ItemAddPageState extends State<ItemAddPage> {
  TextEditingController _controllerText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(Icons.done),
          onPressed: () {
            Navigator.pop(context, _controllerText.text);
          }),
      appBar: AppBar(
        title: Text("Novo Item"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Nome'),
            TextField(controller: _controllerText,),
          ],
        ),
      ),
    );
  }
}
