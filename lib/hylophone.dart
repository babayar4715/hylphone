import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Hylophone extends StatefulWidget {
  const Hylophone({Key? key}) : super(key: key);

  @override
  State<Hylophone> createState() => _HylophoneState();
}

class _HylophoneState extends State<Hylophone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 80,
        title: const Text(
          'The sixth task',
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          Custum(
            noteUrl: 'notes/note1.wav',
            color: Color(0xFFEF443A),
          ),
          Custum(
            noteUrl: 'notes/note2.wav',
            color: Color(0xFFF99700),
          ),
          Custum(
            noteUrl: 'notes/note3.wav',
            color: Color(0xFFFFE93B),
          ),
          Custum(
            noteUrl: 'notes/note4.wav',
            color: Color(0xFF4CB050),
          ),
          Custum(
            noteUrl: 'notes/note5.wav',
            color: Color(0xFF2E968C),
          ),
          Custum(
            noteUrl: 'notes/note6.wav',
            color: Color(0xFF2996F5),
          ),
          Custum(
            'notes/note7.wav',
            Color(0xFF9B28B1),
          ),
        ],
      ),
    );
  }
}

class Custum extends StatelessWidget {
  const Custum({
    required this.noteUrl,
    required this.color,
  });

  final String noteUrl;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          AudioPlayer().play(
            AssetSource(noteUrl),
          );
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
