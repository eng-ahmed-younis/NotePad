import 'package:flutter/material.dart';
import 'package:note_app/utils/notes_list.dart';
import 'package:note_app/components/note_item.dart';
import 'package:note_app/components/search_icon.dart';
import 'package:note_app/components/custome_app_bar.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomeAppBar(title: 'Notes', actions: [SearchIcon()]),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: mockNotes.length, // Replace with your notes count
                itemBuilder: (context, index) {
                  return NoteItem(
                    title: mockNotes[index]['title'],
                    content: mockNotes[index]['content'],
                    date: mockNotes[index]['date'],
                    color: mockNotes[index]['color'],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
