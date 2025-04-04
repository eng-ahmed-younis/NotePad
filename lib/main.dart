import 'package:flutter/material.dart';
import 'package:note_app/theme/app_theme.dart';
import 'package:note_app/navigation/router.dart';
import 'package:note_app/screens/notes_screen.dart';
import 'package:note_app/navigation/router_constants.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      theme: AppTheme.darkTheme,
      home: NotesScreen(),
      onGenerateRoute: generateRoute,
      initialRoute: notesListScreenRoute,
    );
  }
}
