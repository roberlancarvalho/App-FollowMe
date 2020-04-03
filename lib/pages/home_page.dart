import 'package:app_teste/pages/item_add_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String texto = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute<String>(
              builder: (context) {
                return ItemAddPage();
              },
            ),
          );
          setState(() {
          texto = result;
            
          });
        },
      ),
      appBar: AppBar(
        title: Text('AP Shared'),
      ),
      body: Center(child: Text(texto)),
    );
  }
}
