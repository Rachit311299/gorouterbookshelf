import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/authentication_bloc.dart';
import '../blocs/authentication_event.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthenticationBloc>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
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
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0), // Add padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile Picture
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile_picture.png'),
              ),
              SizedBox(height: 16),
              // User Name
              Text(
                'John Doe', // Replace with actual user data
                style: TextStyle(
                  fontFamily: 'YourCustomFont',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 8),
              // Email or additional info
              Text(
                'john.doe@example.com', // Replace with actual user data
                style: TextStyle(
                  fontFamily: 'YourCustomFont',
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 32),
              // Logout Button (Adjusted Width)
              ElevatedButton(
                onPressed: () {
                  authBloc.add(LoggedOut());
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      fontFamily: 'YourCustomFont',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Color(0xFF1A73E8), // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[100], // Adjust background color if needed
    );
  }
}
