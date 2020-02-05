import 'package:flutter/material.dart';

class EmailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Inbox'),
        centerTitle: true,
      ),
      endDrawer: Drawer(
        elevation: 20.0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Padding(
                padding: const EdgeInsets.only(left :8.0),
                child: Text('blahh'),
              ),
              accountEmail: Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Text('blahh@gmail.com'),
              ),
              currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/splash.png',),),
              decoration: BoxDecoration(color: Colors.blueAccent),
            ),
            Divider( 
              height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Drawer layout Item 1'),
              onTap: () {},
            ),
            Divider( 
              height: 2.0,
            )
          ],
        ),
      ),
      body: Container()
    );
  }
}