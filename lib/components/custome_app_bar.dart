import 'package:flutter/material.dart';

class CustomeAppBar extends StatelessWidget {
  final String title;
  final List<Widget> actions;

  CustomeAppBar({required this.title, this.actions = const []});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(
        60.0,
      ), // Set the desired height of the AppBar
      child: AppBar(
        backgroundColor: const Color.fromARGB(
          255,
          28,
          34,
          38,
        ), // You can change the background color if needed
        title: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
          ), // Add a margin of 20 pixels on the left
          child: Align(
            alignment: Alignment.centerLeft, // Align the title to the left
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        actions: actions, // Add any custom action buttons or icons here
      ),
    );
  }
}
