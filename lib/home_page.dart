import 'package:flutter/material.dart';

import 'email_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> itemsList = ['weather','email','music'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: itemsList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Card(
                  child: Column(children: <Widget>[
                    Text(index.toString()),
                    Text(itemsList[index]),
                  ],),
               ),
            );
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EmailPage())
          );
        },
      )
    );
  }
}