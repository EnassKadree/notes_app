import 'package:flutter/material.dart';
import 'package:ntoes_app/constants.dart';
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
          backgroundColor: kPrimaryColor,
          shape: CircleBorder(),
        )
      ),
      home: const NotesView(),
    );
  }
}