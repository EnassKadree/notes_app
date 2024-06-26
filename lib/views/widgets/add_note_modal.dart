import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ntoes_app/cubits/add%20note%20cubit/add_note_cubit.dart';
import 'package:ntoes_app/views/widgets/add_note_form.dart';

class AddNoteModalBottomSheet extends StatelessWidget {
  const AddNoteModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>
      (
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('there was an error ${state.errMessage}');
          } else if (state is AddNotesSuccess) {
            Navigator.of(context).pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only
              (
                left: 16,
                right: 16,
                top: 32,
                bottom: MediaQuery.of(context).viewInsets.bottom + 32,
              ),
              child: const AddNoteForm(),
            ),
          );
        },
      ),
    );
  }
}
