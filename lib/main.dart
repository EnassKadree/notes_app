import 'package:flutter/material.dart';
import 'package:ntoes_app/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget 
{
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      theme: ThemeData
      (
        brightness: Brightness.dark, 
        fontFamily: 'Poppins',
        floatingActionButtonTheme: const FloatingActionButtonThemeData
        (
          backgroundColor: Color(0xff60fed9),
          shape: CircleBorder(),
        )
      ),
      home: const NotesView(),
    );
  }
}