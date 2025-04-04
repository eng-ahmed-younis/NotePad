import 'package:flutter/material.dart';
import 'package:note_app/components/custome_app_bar.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [const CustomeAppBar(title: 'Edit Note', actions: [])],
      ),
    );
  }
}
