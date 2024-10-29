import 'package:flutter/material.dart';
import 'package:widget_1/Widget/menu_bottom.dart';

class homeview extends StatelessWidget {
  const homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ElevatedButton(
        onPressed: (){
          Navigator.pushNamed(context, '/login');
        },
        child: Text('login')),
        bottomNavigationBar: MenuBottom(0),
      
      
    );
  }
}