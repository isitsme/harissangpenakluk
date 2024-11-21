import 'package:flutter/material.dart';


class BookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perpus Telkom',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BookListScreen(),
    );
  }
}

class BookListScreen extends StatelessWidget {
  final List<Book> books = [
    Book  (
      title: '3676 MDPL',
      author: 'Deco entol',
      publisher: 'RCTI',
      stock: 10,
      imageUrl: 'https://www.gramedia.com/products/biru-langit-introduction-to-blue?is_open_image_preview=true',
    ),
    Book(
      title: 'The Hero deco',
      author: 'Boii kah kah',
      publisher: 'SCTV',
      stock: 5,
      imageUrl: 'https://image.gramedia.net/rs:fit:0:0/plain/https://cdn.gramedia.com/uploads/items/9786022203841.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Information'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookCard(book: books[index]);
        },
      ),
    );
  }
}

class Book {
  final String title;
  final String author;
  final String publisher;
  final int stock;
  final String imageUrl;

  Book({
    required this.title,
    required this.author,
    required this.publisher,
    required this.stock,
    required this.imageUrl,
  });
}

class BookCard extends StatelessWidget {
  final Book book;

  BookCard({required this.book});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              book.imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              book.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text('Author: ${book.author}'),
            Text('Publisher: ${book.publisher}'),
            Text('Stock: ${book.stock}'),
          ],
        ),
      ),
    );
  }
}