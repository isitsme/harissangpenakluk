import 'input.dart';
import 'dialog.dart';
import 'RowColumn.dart';
import 'dateandtime.dart';
import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget(String s, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Montage di wujud asli cahaya"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home),
        ),
        actions: [
          const Text("Namaku"),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: const Column(
        children: [
          Center(
            child: Text(
              "You have press the button",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          DialogWidget(),
          InputSelection(),
          DateWidget(
            title: "Tanggal Waktu",
          ),
          Rowcolumn(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color.fromARGB(249, 231, 11, 11),
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.eject,
              ),
              label: "next"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: "settings"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              label: "add file")
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment Value',
        child: const Icon(Icons.plus_one),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
