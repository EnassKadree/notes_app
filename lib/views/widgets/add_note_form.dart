
import 'package:flutter/material.dart';
import 'package:ntoes_app/views/widgets/custom_button.dart';
import 'package:ntoes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget 
{
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
    return Form
    (
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column
      (
        children: 
        [
          CustomTextField
          (
            hint: 'Title',
            onSaved: (value)
            {
              title = value;
            },
          ),
          const SizedBox(height: 16,),
          CustomTextField
          (
            hint: 'Content',
            maxLines: 5,
            onSaved: (value)
            {
              content = value;
            },
          ),
          const Spacer(),
          CustomButton(title: 'Add', onTap: ()
          {
            if(formKey.currentState! .validate())
            {
              formKey.currentState!.save();
            }else
            {
              autovalidateMode = AutovalidateMode.always;
              setState(() {
                  
              });
            }
          },)
        ],
      ),
    );
  }
}