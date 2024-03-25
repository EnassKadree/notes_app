import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ntoes_app/cubits/add%20note%20cubit/add_note_cubit.dart';
import 'package:ntoes_app/cubits/notes%20cubit/notes_cubit.dart';
import 'package:ntoes_app/helper/showSnackBar.dart';
import 'package:ntoes_app/models/note.dart';
import 'package:ntoes_app/views/widgets/colors_list_view.dart';
import 'package:ntoes_app/views/widgets/custom_button.dart';
import 'package:ntoes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> 
{
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) 
  {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column
      (
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTextField(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
            onSaved: (value) {
              content = value;
            },
          ),
          const ColorsListView(),
          BlocBuilder<AddNoteCubit, AddNoteState>
          (
            builder: (context, state) 
            {
              return CustomButton(
                title: 'Add',
                isLoading: state is AddNoteLoading? true : false,
                onTap: () {
                  addNoteFunction(context);
                  BlocProvider.of<NotesCubit>(context).fetchNotes();
                },
              );
            },
          )
        ],
      ),
    );
  }

  void addNoteFunction(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      Note note = Note(
          title: title!,
          content: content!,
          date: DateTime.now().toString().substring(0, 10),
          color: Colors.blue.value);
      BlocProvider.of<AddNoteCubit>(context).addNote(note);
      showSnackBar(context, 'note added successfully');
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
