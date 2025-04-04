import 'package:flutter/material.dart';
import 'package:note_app/utils/notes_list.dart';
import 'package:note_app/components/note_item.dart';
import 'package:note_app/components/search_icon.dart';
import 'package:note_app/components/custome_app_bar.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  // Function to show the modal bottom sheet
  void _showNoteModal(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return const NoteModalSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FloatingActionButton(
          onPressed: () {
            // Open the modal bottom sheet for adding a note
            _showNoteModal(context);
          },
          backgroundColor: const Color.fromARGB(255, 28, 34, 38),
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const CustomeAppBar(title: 'Notes', actions: [SearchIcon()]),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: NotesListView(
                notes: mockNotes,
              ), // Pass mockNotes to NotesListView
            ),
          ),
        ],
      ),
    );
  }
}

class NotesListView extends StatelessWidget {
  final List<Map<String, dynamic>> notes;

  const NotesListView({Key? key, required this.notes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      scrollDirection: Axis.vertical,
      itemCount: notes.length,
      itemBuilder: (context, index) {
        return NoteItem(
          title: notes[index]['title'],
          content: notes[index]['content'],
          date: notes[index]['date'],
          color: notes[index]['color'],
        );
      },
    );
  }
}

class NoteModalSheet extends StatefulWidget {
  const NoteModalSheet({super.key});

  @override
  State<NoteModalSheet> createState() => _NoteModalSheetState();
}

class _NoteModalSheetState extends State<NoteModalSheet> {
  // Text controllers for the text fields
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  // Color selection state
  Color _selectedColor = Colors.blue;

  // List of colors to choose from
  final List<Color> _colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
  ];

  // Function to save the note
  void _saveNote() {
    String title = _titleController.text;
    String description = _descriptionController.text;

    // You can handle saving logic here (e.g., storing in a database or displaying the note)
    // For now, we just close the bottom sheet
    print('Note Title: $title');
    print('Note Description: $description');
    print('Note Color: $_selectedColor');

    Navigator.pop(context); // Close the modal after saving the note
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Title Input
          TextField(
            controller: _titleController,
            decoration: InputDecoration(
              labelText: 'Note Title',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 8),

          // Description Input
          TextField(
            controller: _descriptionController,
            decoration: InputDecoration(
              labelText: 'Description',
              border: OutlineInputBorder(),
            ),
            maxLines: 4,
          ),
          const SizedBox(height: 8),

          // Color Selection
          const Text('Select a Color:'),
          const SizedBox(height: 8),
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _colors.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedColor = _colors[index];
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: _colors[index],
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color:
                            _selectedColor == _colors[index]
                                ? const Color.fromARGB(255, 255, 255, 255)
                                : Colors.transparent,
                        width: 3,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),

          // Save Button
          ElevatedButton(
            onPressed: _saveNote,
            child: const Text('Save Note'),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: const Color.fromARGB(255, 47, 40, 39),
              foregroundColor: const Color.fromARGB(255, 122, 149, 166),
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lora',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
