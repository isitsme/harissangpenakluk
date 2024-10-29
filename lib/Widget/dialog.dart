import 'package:flutter/material.dart';


class DialogWidget extends StatelessWidget {
  const DialogWidget({super.key});

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
          showAlertDialog(context);
          
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // ignore: unused_local_variable
  var icon;
  Widget okButton = ElevatedButton(
    onPressed: () {  },
   child: const Icon(Icons.home),


  );
  AlertDialog alert = AlertDialog(
    title: const Text("my title"),
    content: const Text("This is my message"),
    actions: [okButton,],
  );

  showDialog(
    context:context,
    builder: (BuildContext context) {
      return alert;
      
      
    },
  );
}
