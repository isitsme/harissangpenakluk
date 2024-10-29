import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:widget_1/Views/movieview.dart';
import 'package:widget_1/Views/profilview.dart';

class MenuBottom extends StatefulWidget {
  int activepage;
   MenuBottom(this.activepage);

  @override
  State<MenuBottom> createState() => _MenuBottomState();
}

class _MenuBottomState extends State<MenuBottom> {
  void getlink(index){
    setState(() {});
    if(index == 0){
      Navigator.pushReplacementNamed(context,'/');
    }
else if(index == 1){
  Navigator.pushReplacement(
     context,
          MaterialPageRoute(
            builder:(context_) => profilview(   nama: 'haris', alamat:'malang', juara:123,
        ),
        ),
        );
}
else if(index == 2){
  Navigator.pushReplacementNamed(
    context,'/transaksi',arguments: {
      "id":1,
      "product":"buah",
      "price":4000,
    }
  );
}
else if(index == 3){
  Navigator.pushReplacement(
     context,
          MaterialPageRoute(
            builder:(context_) => MovieView(  
              
        ),
        ),
        );
}
  }
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      currentIndex:widget.activepage ,
      onTap: getlink,
      items:[ 
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'home',
    ),
     BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'home',
    ),
    
    BottomNavigationBarItem(
      icon: Icon(Icons.report_gmailerrorred_outlined),
      label: 'remote')
    ],
    );
  }
}