import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const IconButton(
          icon: Icon(Icons.search, color: Colors.white),
          onPressed: null, // Add your search functionality here
          padding: EdgeInsets.all(0), // Remove default padding
          constraints: BoxConstraints(), // Remove default constraints
          iconSize: 24, // Adjust icon size if needed
          alignment: Alignment.center, // Center the icon within the container
        ),
      ),
    );
  }
}
