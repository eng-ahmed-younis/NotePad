import 'dart:ui';

class Note {
  String title;
  String description;
  Color color;
  DateTime dateCreated;

  Note({
    required this.title,
    required this.description,
    required this.color,
    required this.dateCreated,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'color': color.value,
      'dateCreated': dateCreated.toIso8601String(),
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      title: map['title'],
      description: map['description'],
      color: Color(map['color']),
      dateCreated: DateTime.parse(map['dateCreated']),
    );
  }
}
