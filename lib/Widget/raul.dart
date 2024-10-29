import 'package:flutter/material.dart';
// import 'package:widget_1/gambarsepatu.dart';
// ignore_for_file: prefer_const_constructors


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nike Shoes Store',style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          
          color: Color.fromARGB(199, 188, 222, 216),
          
        ),
        ),
        backgroundColor: Color.fromARGB(200, 0, 179, 149),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'city, country...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Rare'),
                Text('Cheap'),
                Text('Futuristik'),
                Text('Colab'),
                Text('Basketball'),
                 Text('Walk'),
                 Text('Running'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                WeatherIcon(Icons.home, 'home'),
                WeatherIcon(Icons.shopping_cart ,'add to cart'),
                WeatherIcon(Icons.history, 'history'),
                WeatherIcon(Icons.pending, 'in procesced'),
                WeatherIcon(Icons.payment, 'payment'),

              ],
            ),
          ),
         Container(
  height: 120,
  decoration: BoxDecoration( color: Color.fromARGB(1, 21, 57, 43),
    image: DecorationImage(
      image: NetworkImage("assets/rarest-nike-shoes-air-jordan-iii-and-viii-kobe-pack-luxe-digital-900x600.jpg"),
      fit: BoxFit.cover, // Atur gambar agar menyesuaikan dengan ukuran kontainer
    ),
  ),
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      Image(
        image: NetworkImage("assets/rarest-nike-shoes-dunk-low-pro-sb-paris-luxe-digital-900x600.jpg"),
      ),
      Image(
        image: NetworkImage("assets/rarest-nike-shoes-louis-vuitton-x-nike-air-force-1-low-luxe-digital-900x600.jpg"),
      ),
      Image(
        image: NetworkImage("assets/rarest-nike-shoes-nike-sb-dunk-low-pro-tokyo-luxe-digital-900x600.jpg.webp"),
      ),
    ],
  ),
),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('San Francisco', style: TextStyle(fontSize: 24)),
                Text('CA, United States', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                WeatherDetail('Wind', 'SE 9mph'),
                WeatherDetail('Humidity', '92%'),
                WeatherDetail('Visibility', '7.0 mi'),
                WeatherDetail('UV Index', '1'),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.yellow,
      ),
    );
  }
}

class WeatherIcon extends StatelessWidget {
  final IconData icon;
  final String temp;

  WeatherIcon(this.icon, this.temp);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 40),
        Text(temp),
      ],
    );
  }
}

class WeatherDetail extends StatelessWidget {
  final String label;
  final String value;

  WeatherDetail(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(label),
          Text(value),
        ],
      ),
    );
  }
}
