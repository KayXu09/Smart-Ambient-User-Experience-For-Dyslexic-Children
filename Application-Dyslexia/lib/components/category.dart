import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dyslexia/components/word_list.dart';

class WordList extends StatefulWidget {
  final SharedPreferences prefs;
  WordList({Key key,this.prefs}) : super(key:key);

  @override
  State<StatefulWidget> createState(){
    return WordListState();
  }
}

class WordListState extends State<WordList> {
  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: new Text('Catagories'),
      ),
      body: new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Row(
          children: <Widget>[
            new Expanded(
              child: new Container(
              child: new Column(
                children: <Widget>[
                  new Expanded(
                    child:new Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(8.0),
                      boxShadow: [new BoxShadow(color: Colors.black45,offset: Offset.zero,blurRadius: 5.0,spreadRadius: 0.1)],
                    ),
                    child: new InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                          new MaterialPageRoute(
                              builder: (context)=>new VocabularyList(prefs: widget.prefs, title: 'alle ord',label:'all')
                          )
                        );
                        super.dispose();
                      },
                      child: new Center(
                        child: new Text('alle ord',
                          textAlign: TextAlign.left,
                          style: new TextStyle(fontSize: 18.0,height: 1.5,color: Colors.indigo),
                        ),
                      ),
                    ),
                  ),),
                  new Expanded(
                    child: new Container(
                    margin: const EdgeInsets.only(top: 20.0,right: 10.0),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(8.0),
                      boxShadow: [new BoxShadow(color: Colors.black45,offset: Offset.zero,blurRadius: 5.0,spreadRadius: 0.1)],
                    ),
                    child: new InkWell(
                      onTap: (){
                        Navigator.push(context,
                            new MaterialPageRoute(
                                builder: (context)=>new VocabularyList(prefs: widget.prefs,title: 'har ikke læst',label:'unstudy')
                            )
                        );
                      },
                      child: new Center(
                        child: new Text('har ikke læst',
                          textAlign: TextAlign.left,
                          style: new TextStyle(fontSize: 18.0,height: 1.5,color: Colors.purple),
                        ),
                      ),
                    ),
                  ),)
                ],
              ),
            ),),
            new Expanded(
              child: new Container(
              child: new Column(
                children: <Widget>[
                  new Expanded(child: new Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(8.0),
                      boxShadow: [new BoxShadow(color: Colors.black45,offset: Offset.zero,blurRadius: 5.0,spreadRadius: 0.1)],
                    ),
                    child: new InkWell(
                      onTap: (){
                        Navigator.push(context,
                            new MaterialPageRoute(
                                builder: (context)=>new VocabularyList(prefs: widget.prefs,title: 'læser',label:'studying')
                            )
                        );
                      },
                      child: new Center(
                        child: new Text('læser',
                          textAlign: TextAlign.left,
                          style: new TextStyle(fontSize: 18.0,height: 1.5,color: Colors.blue),
                        ),
                      ),
                    ),
                  ),),
                  new Expanded(
                      child: new Container(
                      margin: const EdgeInsets.only(top: 20.0,left:10.0),
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.circular(8.0),
                        boxShadow: [new BoxShadow(color: Colors.black45,offset: Offset.zero,blurRadius: 5.0,spreadRadius: 0.1)],
                      ),
                      child: new InkWell(
                        onTap: (){
                          Navigator.push(context,
                              new MaterialPageRoute(
                                  builder: (context)=>new VocabularyList(prefs: widget.prefs,title: 'har læst',label:'studied')
                              )
                          );
                        },
                        child: new Center(
                          child: new Text('har læst',
                            textAlign: TextAlign.left,
                            style: new TextStyle(fontSize: 18.0,height: 1.5,color: Colors.green),
                          ),
                        ),
                      )
                  ),),
                ],
              ),
            ),),
          ],
        ),
      ),
    );
  }
}