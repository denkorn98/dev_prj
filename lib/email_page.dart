import 'package:flutter/material.dart';

class EmailPage extends StatefulWidget {

  @override
  _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  List<String> drawerList = [
    'All Inboxes','Primary','Social','Promotions','Starred','Snoozed','Important'
  ];

  List<IconData> iconsList = [
    Icons.account_box, Icons.account_circle,Icons.people,Icons.branding_watermark, Icons.star,Icons.timelapse,Icons.arrow_forward
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Inbox'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
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
              decoration: BoxDecoration(color: Colors.redAccent),
            ),
           ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('All Inboxes'),
           ),
           Divider(),
           ListTile(
             leading: Icon(Icons.account_box),
             title: Text('Primary'),
           ),
           Divider(),
           ListTile(
             leading: Icon(Icons.star),
             title: Text('Starred'),
           ),Divider(),
           ListTile(
             leading: Icon(Icons.label_important),
             title: Text('Important'),
           ),
          ],
        ),
      ),

      body: ListView.builder(
        itemBuilder: (BuildContext context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
              backgroundColor: Colors.redAccent,
              radius: 20,
              child: Text('${index+1}')
            ),
            contentPadding: const EdgeInsets.all(25),
            title: Text('blahhh!!'),
            subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry...'),
            trailing: IconButton(
              icon: Icon(Icons.star),
              onPressed: () {},
            ),

            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.edit),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
