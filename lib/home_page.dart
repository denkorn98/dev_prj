import 'package:flutter/material.dart';

import 'email_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('DASHBOARD'),
        centerTitle: true,
        backgroundColor: Colors.grey.shade800,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage('assets/weather1.jpg'),
                        ),
                      ),
                      Text(
                        'Weather',
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('There are many variations of passages of Lorem Ipsum available.'),
                  )
                ],
              )
            ),
          ),
          
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage('assets/mail.jpg'),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EmailPage()),
                          );
                        },
                           child: Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('There are many variations of passages of Lorem Ipsum available.'),
                  )
                ],
              )
            ),
          ),

           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage('assets/player.jpg'),
                        ),
                      ),
                      Text(
                        'Music Player',
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('There are many variations of passages of Lorem Ipsum available.'),
                  )
                ],
              )
            ),
          ),
        ],
      )
      
    );
  }
}