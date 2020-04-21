import 'package:flutter/material.dart';

class ChangePlan extends StatefulWidget {
  final prefs;
  ChangePlan({Key key,this.prefs}) : super(key:key);

  @override
  ChangePlanState createState() => new ChangePlanState();
}

class ChangePlanState extends State<ChangePlan> {
  int count;
  @override
  void initState() {
    super.initState();
    setState((){
      count = widget.prefs.getInt('count');
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          title: new Text('gennemgangsplanen'),
        ),
        body: new Container(
          padding: const EdgeInsets.all(16.0),
          child: new CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: <Widget>[
              new SliverList(
                  delegate: new SliverChildBuilderDelegate(
                    (context,int){
                      return new Column(
                      children: <Widget>[
                        new RadioListTile(
                          activeColor: Colors.blueGrey,
                          key: new Key('5'),
                          title: const Text('Lær 5 ord hver dag'),
                          value: 5,
                          groupValue: count,
                          onChanged: (value) { setState(() {
                            count = value;
                            widget.prefs.setInt('count', value);
                          }); },
                        ),
                        new RadioListTile(
                          activeColor: Colors.blueGrey,
                          key: new Key('10'),
                          title: const Text('Lær 10 ord hver dag'),
                          value: 10,
                          groupValue: count,
                          onChanged: (value) { setState(() {
                            count = value;
                            widget.prefs.setInt('count', value);
                          }); },
                        ),
                        new RadioListTile(
                          activeColor: Colors.blueGrey,
                          key: new Key('15'),
                          title: const Text('Lær 15 ord hver dag'),
                          value: 15,
                          groupValue: count,
                          onChanged: (value) { setState(() {
                            count = value;
                            widget.prefs.setInt('count', value);
                          }); },
                        ),
                        new RadioListTile(
                          activeColor: Colors.blueGrey,
                          key: new Key('20'),
                          title: const Text('Lær 20 ord hver dag'),
                          value: 20,
                          groupValue: count,
                          onChanged: (value) { setState(() {
                            count = value;
                            widget.prefs.setInt('count', value);
                          }); },
                        ),
                        new RadioListTile(
                          activeColor: Colors.blueGrey,
                          key: new Key('25'),
                          title: const Text('Lær 25 ord hver dag'),
                          value: 25,
                          groupValue: count,
                          onChanged: (value) { setState(() {
                            count = value;
                            widget.prefs.setInt('count', value);
                          }); },
                        ),
                        new RadioListTile(
                          activeColor: Colors.blueGrey,
                          key: new Key('30'),
                          title: const Text('Lær 30 ord hver dag'),
                          value: 30,
                          groupValue: count,
                          onChanged: (value) { setState(() {
                            count = value;
                            widget.prefs.setInt('count', value);
                          }); },
                        ),
                        new RadioListTile(
                          activeColor: Colors.blueGrey,
                          key: new Key('50'),
                          title: const Text('Lær 50 ord hver dag'),
                          value: 50,
                          groupValue: count,
                          onChanged: (value) { setState(() {
                            count = value;
                            widget.prefs.setInt('count', value);
                          }); },
                        ),
                        new RadioListTile(
                          activeColor: Colors.blueGrey,
                          key: new Key('80'),
                          title: const Text('Lær 80 ord hver dag'),
                          value: 80,
                          groupValue: count,
                          onChanged: (value) { setState(() {
                            count = value;
                            widget.prefs.setInt('count', value);
                          }); },
                        ),
                        new RadioListTile(
                          activeColor: Colors.blueGrey,
                          key: new Key('100'),
                          title: const Text('Lær 100 ord hver dag'),
                          value: 100,
                          groupValue: count,
                          onChanged: (value) { setState(() {
                            count = value;
                            widget.prefs.setInt('count', value);
                          }); },
                        ),
                        new RadioListTile(
                          activeColor: Colors.blueGrey,
                          key: new Key('150'),
                          title: const Text('Lær 150 ord hver dag'),
                          value: 150,
                          groupValue: count,
                          onChanged: (value) { setState(() {
                            count = value;
                            widget.prefs.setInt('count', value);
                          }); },
                        ),
                        new RadioListTile(
                          activeColor: Colors.blueGrey,
                          key: new Key('200'),
                          title: const Text('Lær 200 ord hver dag'),
                          value: 200,
                          groupValue: count,
                          onChanged: (value) { setState(() {
                            count = value;
                            widget.prefs.setInt('count', value);
                          }); },
                        ),
                        new RadioListTile(
                          activeColor: Colors.blueGrey,
                          key: new Key('300'),
                          title: const Text('Lær 300 ord hver dag'),
                          value: 300,
                          groupValue: count,
                          onChanged: (value) { setState(() {
                            count = value;
                            widget.prefs.setInt('count', value);
                          }); },
                        )
                      ],
                    );
                    },
                    childCount: 1
                  )
              ),
            ],
          ),
        )
    );
  }
}