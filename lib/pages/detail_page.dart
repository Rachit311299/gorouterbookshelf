import 'package:flutter/material.dart';
import '../models/book.dart';

class DetailPage extends StatelessWidget {
  final Book book;

  const DetailPage({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          book.title,
          style: TextStyle(
            fontFamily: 'YourCustomFont', // Replace with your font family
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF1A73E8), // Use your desired color
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[100], // Adjust background color if needed
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Book Title
            Text(
              book.title,
              style: TextStyle(
                fontFamily: 'YourCustomFont',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            // Author
            Text(
              'by ${book.author}',
              style: TextStyle(
                fontFamily: 'YourCustomFont',
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            ),
            Divider(height: 32, thickness: 1),
            // Book Description
            Text(
              book.description,
              style: TextStyle(
                fontFamily: 'YourCustomFont',
                fontSize: 16,
                height: 1.5, // Adjusts line height for better readability
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
