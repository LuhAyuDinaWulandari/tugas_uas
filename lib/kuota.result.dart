import 'package:flutter/material.dart';
import 'dart:math';
import 'profil.dart';

class KUOTAResult extends StatelessWidget {


  KUOTAResult({@required this.jumlah_mb, @required this.nomor_hp, @required this.jumlah_gb, @required this.jk});
  final int jumlah_mb;
  final int jumlah_gb;
  final String nomor_hp;
  final String jk;



  @override
  Widget build(BuildContext context) {
     int hrg = (((jumlah_gb * 1000) + jumlah_mb)*20);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('NOTIFIKASI KUOTA'),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,child: Container(
              color: Colors.white,
            ),),
            new Text(
                "Nomor : ${nomor_hp}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: Colors.black87
              ),
            ),
           
            SizedBox(height: 10,child: Container(
              color: Colors.white,
            ),),
            new Text(
              "Jenis Kuota : ${jk} ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87
              ),
            ),

            Text(
              'Harga Kuota',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              'Rp.$hrg,00',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),

          ],
        ),
      ),
    );
  }
}