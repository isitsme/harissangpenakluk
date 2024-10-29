import 'package:flutter/material.dart';

class InputSelection extends StatefulWidget {
  const InputSelection({super.key});

  @override
  State<InputSelection> createState() => _InputSelectionState();
}
class _InputSelectionState extends State<InputSelection> {
  
  TextEditingController nama = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(controller: nama,
          obscureText: false,
          onChanged: (a){
            setState(() {});
          },
          decoration: const InputDecoration(
            border:
            OutlineInputBorder(),
            labelText: 'Username',
          )
        ),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            border:
            OutlineInputBorder(),
            labelText: 'Password',
          )
        )
      ],
    );
  }
}