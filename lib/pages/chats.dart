import 'package:flutter/material.dart';
import 'package:f_whatsapp/models/chatmodel.dart';

class ChatsScreen extends StatefulWidget {
  @override
  ChatsScreenState createState() {
    return new ChatsScreenState();
  }
}

class ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context,i)=>new Column(
          children: <Widget>[
            new Divider(height: 10.0,),
            new ListTile(
              leading: new CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    dummyData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  new Text(
                    dummyData[i].time,
                    style: TextStyle(color: Colors.grey,fontSize: 14.0),
                  ),
                ],
              ),
              subtitle: new Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: new Text(
                  dummyData[i].message,
                  style: TextStyle(color: Colors.grey,fontSize: 14.0),
                ),
              ),
            ),
          ],
        ),
    );
  }
}
