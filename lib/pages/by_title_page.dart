import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/book.dart';

class ByTitlePage extends StatelessWidget {
  final List<Book> books = [
    Book(
        title: 'The Lost World',
        author: 'Arthur Conan Doyle',
        description:
            'An expedition discovers dinosaurs and prehistoric creatures on a remote plateau'),
    Book(
        title: 'Dark Video',
        author: 'Peter Church',
        description:
            'A teenager becomes entangled in the dangerous world of internet crime and underground videos'),
    Book(
        title: 'Cannibal Club',
        author: 'John Albedo',
        description:
            'A thriller that delves into the dark world of a secret society indulging in forbidden acts'),
    Book(
        title: 'The Goose Girl',
        author: 'Shannon Hale',
        description:
            'A betrayed princess disguises herself to reclaim her rightful place'),
    Book(
        title: 'Our Tragic Universe',
        author: 'Scarlett Thomas',
        description:
            'A writer grapples with life, love, and the possibility of a better future'),
    Book(
        title: 'Hunger',
        author: 'Knut Hamsun',
        description:
            'A starving writer wanders the city, facing poverty and mental turmoil'),
    Book(
        title: 'Roads and Bridges',
        author: 'Glynnis Hayward',
        description:
            'An American Peace Corps worker becomes determined to help an AIDS orphan'),
    Book(
        title: 'Manhattan Transfer',
        author: 'John Dos Passos',
        description:
            'An intricate portrayal of various lives in early 20th-century New York City'),
    Book(
        title: 'The Hunger Games',
        author: 'Suzanne Collins',
        description:
            'In a dystopian future, teens are forced to fight to the death on live television'),
    Book(
        title: 'Red',
        author: 'John Logan',
        description:
            'A play about artist Mark Rothko and his struggles with art and legacy'),
    // Add more books as needed
  ];

  @override
  Widget build(BuildContext context) {
    // Sort books by title
    books.sort((a, b) => a.title.compareTo(b.title));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Books by Title',
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
      body: ListView.separated(
        itemCount: books.length,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey[300],
          thickness: 1,
          height: 1,
        ),
        itemBuilder: (context, index) {
          final book = books[index];
          return ListTile(
            
            title: Text(
              book.title,
              style: TextStyle(
                fontFamily: 'YourCustomFont',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            subtitle: Text(
              book.author,
              style: TextStyle(
                fontFamily: 'YourCustomFont',
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: Colors.grey,
            ),
            onTap: () {
              context.push('/detail', extra: book);
            },
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            tileColor: Colors.white,
          );
        },
      ),
      backgroundColor: Colors.grey[100], // Adjust background color if needed
    );
  }
}
