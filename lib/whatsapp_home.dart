import 'package:f_whatsapp/pages/calls.dart';
import 'package:f_whatsapp/pages/camera.dart';
import 'package:f_whatsapp/pages/chats.dart';
import 'package:f_whatsapp/pages/status.dart';
import 'package:flutter/material.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('WhatsApp'),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(
              text: "CHATS",
            ),
            new Tab(
              text: "STATUS",
            ),
            new Tab(
              text: "CALLS",
            ),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: new EdgeInsets.symmetric(horizontal: 5.0)),
          new Icon(
            Icons.more_vert,
          ),
        ],
      ),
      body: new TabBarView(controller: _tabController, children: <Widget>[
        new CameraScreen(),
        new ChatsScreen(),
        new StatusScreen(),
        new CallsScreen(),
      ]),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.message, color: Colors.white),
        onPressed: () => print('open chats'),
      ),
    );
  }
}
