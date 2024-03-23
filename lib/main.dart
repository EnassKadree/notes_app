import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:ntoes_app/constants.dart';
import 'package:ntoes_app/cubits/add%20note%20cubit/add_note_cubit.dart';
import 'package:ntoes_app/models/note.dart';
import 'package:ntoes_app/simple_bloc_observer.dart';
import 'package:ntoes_app/views/notes_view.dart';
import 'package:bloc/bloc.dart';

void main() async 
{
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NoteAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider
    (
      providers: 
      [
        BlocProvider
        (
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp
      (
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: 'Poppins',
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: kPrimaryColor,
              shape: CircleBorder(),
            )),
        home: const NotesView(),
      )
    );
  }
}
