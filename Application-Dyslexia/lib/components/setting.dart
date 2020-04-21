import 'package:flutter/material.dart';
import 'package:dyslexia/components/book_options.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dyslexia/components/plan_option.dart';

class Mine extends StatefulWidget {
  final SharedPreferences prefs;
  Mine({Key key,this.prefs}) : super(key:key);

  @override
  MineState createState() => new MineState();
}

class MineState extends State<Mine> {
  bool showColins;
  bool autoSound;
  bool sentence;
  bool showCn;
  bool enPh;
  int count;
  @override
  void initState() {
    super.initState();
    showColins = widget.prefs.getBool('showcollins');
    sentence = widget.prefs.getBool('sentence');
    showCn = widget.prefs.getBool('showCn');
    autoSound = widget.prefs.getBool('autoplay');
    count = widget.prefs.getInt('count');
    enPh = widget.prefs.getBool('en_ph');
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      child: new Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new AssetImage('assets/img/mine.jpeg'),
                )
            ),
            padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 16.0),
            child: new Row(
              children: <Widget>[
                new Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(6.0),
                      image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: new AssetImage('assets/img/account.jpeg'),
                      )
                  ),
                ),
                new Padding(padding: const EdgeInsets.only(left: 12.0)),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text('Kaiyue Xu',style: new TextStyle(fontSize: 26.0,color: Colors.amberAccent),),
                    new Text('Har studeret i 30 dage i træk',style: new TextStyle(fontSize: 14.0,color: Colors.white70),),
                  ],
                )
              ],
            ),
          ),
          new Expanded(
            child: new ListView(
              children: <Widget>[
                new InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                        new MaterialPageRoute(
                            builder: (context) => new SelectBook(prefs:widget.prefs)
                        )
                    );
                  },
                  child: new Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text('Skift ordbog',style: new TextStyle(fontSize: 16.0),),
                          new Icon(Icons.chevron_right,size: 30.0,color: Colors.grey)
                        ],
                      )
                  ),
                ),
                new InkWell(
                  onTap: () async {
                    await Navigator.of(context).push(
                        new MaterialPageRoute(
                            builder: (context) => new ChangePlan(prefs:widget.prefs)
                        )
                    );
                    setState((){
                      count = widget.prefs.getInt('count');
                    });
                  },
                  child: new Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text('Aktuel gennemgangsplan：Hvar dag $count ord',style: new TextStyle(fontSize: 16.0),),
                        new Icon(Icons.chevron_right,size: 30.0,color: Colors.grey)
                      ],
                    ),
                  ),
                ),
                new CheckboxListTile(
                  activeColor: Colors.blueGrey,
                  dense: false,
                  title: const Text('Britisk udtale'),
                  value: enPh,
                  onChanged: (bool value) { setState(() {
                    enPh = value;
                    widget.prefs.setBool('enPh', value);
                  }); },
                ),
                new CheckboxListTile(
                  activeColor: Colors.blueGrey,
                  dense: false,
                  title: const Text('Amerikansk udtale'),
                  value: !enPh,
                  onChanged: (bool value) { setState(() {
                    enPh = !value;
                    widget.prefs.setBool('enPh', !value);
                  }); },
                ),
                new SwitchListTile(
                    activeColor: Colors.blueGrey,
                    title: new Text('Autoplay udtale'),
                    value: autoSound,
                    onChanged: (bool value) {
                      setState((){
                        autoSound = value;
                        widget.prefs.setBool('autoplay', value);
                      });
                    }
                ),
                new SwitchListTile(
                    activeColor: Colors.blueGrey,
                    title: new Text('Åben ordbog'),
                    value: showColins,
                    onChanged: (bool value) {
                      setState((){
                        showColins = value;
                        widget.prefs.setBool('showcollins', value);
                      });
                    }
                ),
                new SwitchListTile(
                    activeColor: Colors.blueGrey,
                    title: new Text('Vis dansk oversættelse'),
                    value: showCn,
                    onChanged: (bool value) {
                      setState((){
                        showCn = value;
                        widget.prefs.setBool('showCn', value);
                      });
                    }
                ),
                new SwitchListTile(
                    activeColor: Colors.blueGrey,
                    title: new Text('Vis eksempel sætninger'),
                    value: sentence,
                    onChanged: (bool value) {
                      setState((){
                        sentence = value;
                        widget.prefs.setBool('sentence', value);
                      });
                    }
                ),
              ],
            ),
          )
        ],
      ),
    ),
    );
  }
}