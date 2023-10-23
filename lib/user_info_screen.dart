import 'package:flutter/material.dart';

class UserInfoScreen extends StatelessWidget {
  final String name;
  final String email;

  const UserInfoScreen({required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Info')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Name: $name'),
            Text('Email: $email'),
          ],
        ),
      ),
    );
  }
}
