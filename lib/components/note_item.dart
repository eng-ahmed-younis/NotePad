import 'package:flutter/widgets.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  final String title;
  final String content;
  final String date;
  final Color color;

  const NoteItem({
    Key? key,
    required this.title,
    required this.content,
    required this.date,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 231, 207, 87).withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Title + Delete Icon Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Expanded title and content
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Lora',
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        content,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontFamily: 'Lora',
                        ),
                      ),
                    ],
                  ),
                ),

                /// Trailing delete icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete, color: Colors.black54),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                date,
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
