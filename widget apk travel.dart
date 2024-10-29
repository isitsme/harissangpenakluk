import 'package:flutter/material.dart';


class Widgettravel extends StatelessWidget {
  const Widgettravel({super.key});

  @override
  Widget build(BuildContext context) {
    return MyLayout();
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(23.0),
      child: ElevatedButton(
        child:const Icon(Icons.search),
        onPressed: () {
          
          
        },
      ),
    );
  }
}