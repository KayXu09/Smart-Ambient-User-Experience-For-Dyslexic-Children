import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SelectBook extends StatefulWidget {
  final SharedPreferences prefs;
  SelectBook({Key key,this.prefs}) : super(key:key);

  @override
  SelectBookState createState() => new SelectBookState();
}

class SelectBookState extends State<SelectBook> {
  int level;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState((){
      level = widget.prefs.getInt('level');
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        title: new Text('Choose a book'),
      ),
      body: new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
          children: <Widget>[
            new RadioListTile(
              activeColor: Colors.blueGrey,
              title: const Text('book1'),
              value: 1,
              groupValue: level,
              onChanged: (int value) { setState(() {
                level = value;
                widget.prefs.setInt('level', value);
              }); },
            ),
            new RadioListTile(
              activeColor: Colors.blueGrey,
              title: const Text('book2'),
              value: 2,
              groupValue: level,
              onChanged: (int value) { setState(() {
                level = value;
                widget.prefs.setInt('level', value);
              }); },
            ),
            new RadioListTile(
              activeColor: Colors.blueGrey,
              title: const Text('book3'),
              value: 3,
              groupValue: level,
              onChanged: (int value) { setState(() {
                level = value;
                widget.prefs.setInt('level', value);
              }); },
            ),
            new RadioListTile(
              activeColor: Colors.blueGrey,
              title: const Text('book4'),
              value: 4,
              groupValue: level,
              onChanged: (int value) { setState(() {
                level = value;
                widget.prefs.setInt('level', value);
              }); },
            ),
            new RadioListTile(
              activeColor: Colors.blueGrey,
              title: const Text('book5'),
              value: 5,
              groupValue: level,
              onChanged: (int value) { setState(() {
                level = value;
                widget.prefs.setInt('level', value);
              }); },
            ),
          ],
        ),
      )
    );
  }
}