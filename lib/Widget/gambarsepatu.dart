import 'package:flutter/material.dart';

class gambarsepatu extends StatelessWidget {
  const gambarsepatu({super.key});

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Horizontal Image Scroll'),
        ),
        body: ImageScrollWidget(),
      ),
    );
  }
}

class ImageScrollWidget extends StatelessWidget {
  final List<String> imageUrls = [
    'assets/rarest-nike-shoes-air-jordan-iii-and-viii-kobe-pack-luxe-digital-900x600.jpg',
    'assets/rarest-nike-shoes-dunk-low-pro-sb-paris-luxe-digital-900x600.jpg',
    'assets/rarest-nike-shoes-louis-vuitton-x-nike-air-force-1-low-luxe-digital-900x600.jpg',
    'assets/rarest-nike-shoes-nike-sb-dunk-low-pro-tokyo-luxe-digital-900x600.jpg.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(imageUrls[index]),
          );
        },
      ),
    );
  }
}
