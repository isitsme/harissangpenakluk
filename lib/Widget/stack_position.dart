import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';

class stck extends StatelessWidget {
  const stck({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: 
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color:Color.fromARGB(244, 91, 67, 67),
              borderRadius:BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight:Radius.circular(20),
              ),
              ),
              height: 250,
              child:const Stack(
                children: [
                  Positioned(child:Image(image:AssetImage("assets/Screenshot 2024-08-28 093012.png"),
                  ),
                  ),
                  Positioned(
                    top:18,
                    child: Text("Elegant Shoes",
                  style: TextStyle(fontSize: 14),
                  ))
                ],
              )
              // Column(
              //   children: [Image(image: AssetImage("assets/Screenshot 2024-08-28 093012.png"),
              //   width: MediaQuery.of(context).size.width*35/100,),
              //     Container(width: MediaQuery.of(context).size.width,
              //     padding: EdgeInsets.only(left: 10, right: 10,),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children:[
              //       Text("Warning this store so Cheap"), 
              //       Icon(Icons.warning),
              //       ],
              //       ),
              //     )
              //     ],
              //     ),
            )
          ],),
      ),
    );

  }
}