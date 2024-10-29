import '../Widget/menu_bottom.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Transaksiview extends StatelessWidget {
  const Transaksiview({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
    body:Column(
      children: [
         IconButton(onPressed: (){
            Navigator.of(context).pop();
           },
            icon:Icon(Icons.arrow_back)
            ),
        Text(" ID:  ${args['1']}"),
         Text("Nama Produk :  ${args['bag']}"),
           Text("Harga :  ${args['Rupiah']}"),
          
      ],
    ),
    bottomNavigationBar: MenuBottom(2),
    );
  }
}