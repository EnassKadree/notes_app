import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:ntoes_app/cubits/add%20note%20cubit/add_note_cubit.dart';
import 'package:ntoes_app/views/widgets/add_note_form.dart';

class AddNoteModalBottomSheet extends StatelessWidget 
{
  const AddNoteModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return BlocConsumer<AddNoteCubit, AddNoteState>
    (
      listener: (context, state) 
      {
        if(state is AddNoteFailures)
        {
          print('there was an error ${state.errMessage}');
        }
        else if(state is AddNotesSuccess)
        {
          Navigator.of(context).pop(context);
        }
      },
      builder: (context, state) 
      {
        return ModalProgressHUD
        (
          inAsyncCall: state is AddNoteLoading ? true : false,
          child: const Padding
          (
            padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            child: AddNoteForm(),
          ),
        );
      },
    );
  }
}
