import 'package:flutter/material.dart';
import 'package:note_app/components/custome_app_bar.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomeAppBar(title: 'Notes'),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with your notes count
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Note $index'),
                  subtitle: Text('This is the content of note $index'),
                  onTap: () {
                    // Handle note tap
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
