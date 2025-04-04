import 'package:flutter/material.dart';
import 'package:note_app/screens/edit_note.dart';
import 'package:note_app/screens/notes_screen.dart';
import 'package:note_app/navigation/router_constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case notesListScreenRoute:
      return MaterialPageRoute(builder: (_) => const NotesScreen());
    case editNoteScreenRoute:
      return MaterialPageRoute(builder: (_) => const EditNoteScreen());
    default:
      return MaterialPageRoute(
        builder:
            (_) =>
                const Scaffold(body: Center(child: Text('No route defined'))),
      );
  }
}
