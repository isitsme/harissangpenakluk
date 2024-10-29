import '../Widget/menu_bottom.dart';
import 'package:flutter/material.dart';
class profilview extends StatelessWidget {
  String nama;
  String? alamat;
  int juara;
 profilview ({super.key,
 required this.nama,
 this.alamat,
 required this.juara,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
      Text("profile"),
      Text(nama),
      Text(alamat!),
      Text("${juara}"),
        ],
      ),
      bottomNavigationBar: MenuBottom(1),
    );
  }
}