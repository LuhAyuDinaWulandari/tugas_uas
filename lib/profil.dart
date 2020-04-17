import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';



class MyProfil extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         backgroundColor: Colors.lightBlue[50],
         appBar: AppBar(
         title: Text(
           'Profil',
           style: TextStyle(
             fontSize: 27,
             color: Colors.white,
           ),
           ),
         centerTitle: true,
         backgroundColor: Colors.blue[900],
         ),

         body: ListView(

          children: <Widget>[

            Container(

              color: Colors.white,

              child: Stack(

                children: <Widget>[

                  Padding(

                    padding: EdgeInsets.only(top: 3),

                    child: Align(

                      alignment: Alignment.topCenter,

                      child: Container(

                        height: 200,

                        width: 200,

                        decoration: BoxDecoration(



                            image: DecorationImage(image: AssetImage('images/profil.jpg'),

                                fit: BoxFit.cover

                            )

                        ),

                      ),

                    ),

                  ),

                ],

              ),

            ),

                Padding(padding: EdgeInsets.only(top: 20)),
                 Text(
                  'Luh Ayu Dina Wulandari',
                    style: TextStyle(
                     fontSize: 25,
                    color: Colors.black,
                     ),
                     textAlign: TextAlign.center,
                   ),
                 Text(
                  'Pendidikan Teknik Informatika',                     
                    style: TextStyle(                      
                     fontSize: 15,
                    color: Colors.black,
                     ),
                     textAlign: TextAlign.center,
                   ),

                  Padding(padding: EdgeInsets.only(bottom: 40)),

                   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                    children: <Widget>[
                     Container(
                       width: 120,
                       height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)
                          ),
                          border: Border.all(
                            width: 3,
                            color: Colors.pink[300]
                          )
                        ),

                        
                       child: Column(
                         children: <Widget>[
                           Container(margin: EdgeInsets.only(top: 6),),
                        Icon(
                          Icons.gps_fixed,
                          color: Colors.green,
                          size: 55,                          
                        ),

                        Container(
                        child: Center(
                        child: Text(
                          'Gerokgak',
                          style: TextStyle(
                          fontSize:20,
                          color: Colors.white,
                          
                         ),
                        ),
                        ),
                        margin: EdgeInsets.only(top: 10),
                        width: 120,
                        color: Colors.pink[300]
                        
                        ),
                         ],
                       )
                     ),
                      ],
                    ),

                   Column(
                    children: <Widget>[
                     Container(
                       width: 120,
                       height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)
                          ),
                          border: Border.all(
                            width: 3,
                            color: Colors.pink[300]
                          )
                        ),

                       child: Column(
                         children: <Widget>[
                           Container(margin: EdgeInsets.only(top: 6),),
                        Icon(
                          Icons.store,
                          color: Colors.orangeAccent,
                          size: 55,
                        ),

                        Container(
                        child: Center(
                        child: Text(
                          'Banyuning',
                          style: TextStyle(
                          fontSize:20,
                          color: Colors.white,
                          
                         ),
                        ),
                        ),
                        margin: EdgeInsets.only(top: 10),
                        width: 120,
                        color: Colors.pink[300]
                        
                        ),
                         ],
                       )
                     ),
                      ],
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                  children: <Widget>[
                    
                    Column(
                    children: <Widget>[

                     Container(
                       margin: EdgeInsets.only(top:15),
                       width: 120,
                       height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)
                          ),
                          border: Border.all(
                            width: 3,
                            color: Colors.pink[300]
                          )
                        ),

                        
                       child: Column(
                         children: <Widget>[
                           Container(margin: EdgeInsets.only(top: 6),),
                        Icon(
                          Icons.music_note,
                          color: Colors.redAccent,
                          size: 55,
                        ),

                        Container(
                        child: Center(
                        child: Text(
                          'Pop Bali',
                          style: TextStyle(
                          fontSize:20,
                          color: Colors.white,
                          
                         ),
                        ),
                        ),
                        margin: EdgeInsets.only(top: 10),
                        width: 120,
                        color: Colors.pink[300]
                        
                        ),
                         ],
                       )
                     ),
                      ],
                    ),

                   Column(
                    children: <Widget>[

                     Container(
                       margin: EdgeInsets.only(top:15),
                       width: 120,
                       height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)
                          ),
                          border: Border.all(
                            width: 3,
                            color: Colors.pink[300]
                          )
                        ),

                        
                       child: Column(
                         children: <Widget>[
                           Container(margin: EdgeInsets.only(top: 6),),
                        Icon(
                          Icons.business,
                          color: Colors.blue,
                          size: 55,
                        ),

                        Container(
                        child: Center(
                        child: Text(
                          'Undiksha',
                          style: TextStyle(
                          fontSize:20,
                          color: Colors.white,
                          
                         ),
                        ),
                        ),
                        margin: EdgeInsets.only(top: 10),
                        width: 120,
                        color: Colors.pink[300]
                        
                        ),
                         ],
                       )
                     ),
                      ],
                    ),
                  ],
                ),



            ],
            
           ),
           
         ),

       ); 
   }
 }