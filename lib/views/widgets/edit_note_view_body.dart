import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ntoes_app/cubits/notes%20cubit/notes_cubit.dart';
import 'package:ntoes_app/helper/showSnackBar.dart';
import 'package:ntoes_app/models/note.dart';
import 'package:ntoes_app/views/widgets/custom_appbar.dart';
import 'package:ntoes_app/views/widgets/custom_text_field.dart';
import 'package:ntoes_app/views/widgets/edit_note_colors_listview.dart';

class EditNoteViewBody extends StatefulWidget 
{
  const EditNoteViewBody({super.key, required this.note});
  final Note note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> 
{
  String? title, content;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  @override
  void initState() 
  {
    titleController.text = widget.note.title;
    contentController.text = widget.note.content;
    super.initState();
  }

  @override
  Widget build(BuildContext context) 
  {
    return Padding
    (
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column
      (
        children: 
        [
          CustomAppBar
          (
            title: 'Edit Note', 
            icon: Icons.check_rounded,
            onPressed: ()
            {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchNotes();
              Navigator.of(context).pop(context);
              showSnackBar(context, 'Note updated successfully');
            },
          ),
          const SizedBox(height: 32,),
          CustomTextField(hint: widget.note.title, onChanged: (value) {title = value;}, controller: titleController,),
          const SizedBox(height: 16,),
          CustomTextField(hint: widget.note.content, maxLines: 5,onChanged: (value) {content = value;},controller: contentController,),
          EditNoteColorsListView(note: widget.note)
        ],
      ),
    );
  }
}