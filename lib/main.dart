import 'package:flutter/material.dart';

import 'kuota.result.dart';

import 'profil.dart';



void main(){

  runApp(new MaterialApp(

    home: new Home(),

    routes: <String, WidgetBuilder>{

      '/Halsatu' : (BuildContext context) => new Home(),

      '/Haldua' : (BuildContext context) => new MyProfil(),



    },

  ));

}



class Home extends StatefulWidget {

  @override

  _HomeState createState() => new _HomeState();

}



class _HomeState extends State<Home> {

  int mb = 0;
  int gb = 0;



  String _jk="";



  void _pilihJk(String value){

    setState(() {

      _jk = value;

    });

  }



  var _nomor = new TextEditingController();



  @override

  Widget build(BuildContext context) {

    return new Scaffold(

      appBar: new AppBar(

        leading: new Icon(Icons.android, color : Colors.lightGreen),

        title: new Text('APLIKASI  KUOTA'),

        centerTitle: true,

        backgroundColor: Colors.lightBlue,

        actions: <Widget>[

          new IconButton(

            icon: Icon(Icons.person, color : Colors.white),

            onPressed: (){

              Navigator.pushNamed(context, '/Haldua');

            },

          )

        ],

      ),



      body: ListView(

        children: <Widget>[

          new Container(

            padding: new EdgeInsets.all(20.0),

            child: new Column(

              children: <Widget>[

                new TextField(

                  controller: _nomor,
                  maxLength: 12,

                  decoration: new InputDecoration(

                      labelText: "Nomor_hp",

                      border: new OutlineInputBorder(

                          borderRadius: new BorderRadius.circular(10.0)

                      )

                  ),
                ),

                 new Padding(padding: new EdgeInsets.only(top: 20.0)),



                new TextField(

                  onChanged: (txt) {

                    setState(() {

                      mb = int.parse(txt);

                    });

                  },



                  keyboardType: TextInputType.number,

                  decoration: new InputDecoration(

                      labelText: "Jumlah MB",

                      border: new OutlineInputBorder(

                          borderRadius: new BorderRadius.circular(10.0)

                      )

                  ),

                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0)),



                new TextField(

                  onChanged: (txt) {

                    setState(() {

                      gb = int.parse(txt);

                    });

                  },



                  keyboardType: TextInputType.number,

                  decoration: new InputDecoration(

                      labelText: "Jumlah GB",

                      border: new OutlineInputBorder(

                          borderRadius: new BorderRadius.circular(10.0)

                      )

                  ),

                ),


                new RadioListTile(

                  value: "INDOSAT",

                  groupValue: _jk,

                  title: new Text("INDOSAT"),

                  onChanged: (String value){

                    _pilihJk(value);

                  },

                ),

                new Padding(padding: new EdgeInsets.only(top: 0.0)),

                new RadioListTile(

                  value: "SMARTFREN",

                  groupValue: _jk,

                  title: new Text("SMARTFREN"),

                  onChanged: (String value){

                    _pilihJk(value);

                  },

                ),

                 new Padding(padding: new EdgeInsets.only(top: 0.0)),

                new RadioListTile(

                  value: "XL",

                  groupValue: _jk,

                  title: new Text("XL"),

                  onChanged: (String value){

                    _pilihJk(value);

                  },

                ),

                 new Padding(padding: new EdgeInsets.only(top: 0.0)),

                new RadioListTile(

                  value: "TELKOMSEL",

                  groupValue: _jk,

                  title: new Text("TELKOMSEL"),

                  onChanged: (String value){

                    _pilihJk(value);

                  },

                ),

                 new Padding(padding: new EdgeInsets.only(top: 0.0)),

                new RadioListTile(

                  value: "AXIS",

                  groupValue: _jk,

                  title: new Text("AXIS"),

                  onChanged: (String value){

                    _pilihJk(value);

                  },

                ),

                 new Padding(padding: new EdgeInsets.only(top: 0.0)),

                new RadioListTile(

                  value: "THREE",

                  groupValue: _jk,

                  title: new Text("THREE"),

                  onChanged: (String value){

                    _pilihJk(value);

                  },

                ),



                new Padding(padding: new EdgeInsets.only(top: 20.0)),





                Container(

                  //height: double.infinity,

                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),

                  child: RaisedButton(

                    onPressed: () {

                      var route = new MaterialPageRoute(

                        builder: (BuildContext) =>

                        new KUOTAResult(nomor_hp : _nomor.text,jumlah_mb: mb, jumlah_gb: gb, jk: _jk),


                      );

                      Navigator.of(context).push(route);
                    },

                    padding: EdgeInsets.all(10.0),

                    color: Colors.lightGreen,

                    textColor: Colors.white,

                    child: Text(

                      'OK',

                      style:

                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),



                    ),

                  ),

                ),

              ],

            ),

          ),

        ],

      ),

    );

  }

}