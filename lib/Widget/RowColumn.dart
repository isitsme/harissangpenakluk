import 'package:flutter/material.dart';

class Rowcolumn extends StatelessWidget {
  const Rowcolumn({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Text("Avenged Sevenfold"),
            Row(
              children: [ 
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(1, 0, 0, 0)
                  ),
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/download (1).jpeg")),
                      Text("Synyster Gates")
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/zACH.jpeg")),
                          Text("Zach Vengeance")
                        ],
                      ),
                    ),
                  ],
                ),
                
                

              ],
            )
          ],
        ),
      ),
    );
  }
}