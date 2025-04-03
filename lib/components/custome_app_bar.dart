import 'package:flutter/material.dart';

class CustomeAppBar extends StatelessWidget {
  final String title;
  final List<Widget> actions;

  const CustomeAppBar({required this.title, this.actions = const []});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60.0), // Reduced height
      child: AppBar(
        backgroundColor: const Color.fromARGB(255, 28, 34, 38),
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: false,
        titleSpacing: 0, // <-- This removes default spacing on the left
        actions: actions,
      ),
    );
  }
}
