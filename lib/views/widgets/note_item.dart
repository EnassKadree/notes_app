
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ntoes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget 
{
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Padding
    (
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: InkWell
      (
        onTap: ()
        {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EditNotView()));
        },
        child: Container
        (
          decoration: BoxDecoration
          (
            color: const Color(0xfffecd7e),
            borderRadius: BorderRadius.circular(16)
          ),
          child: Padding
          (
            padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.end,
              children: 
              [
                ListTile
                (
                  title: const Text
                  (
                    'Flutter Tips',
                    style: TextStyle
                    (
                      color: Colors.black,
                      fontSize: 24
                    ),
                  ),
                  subtitle: Padding
                  (
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text
                    (
                      'Build you career with tharwat samy', 
                      style: TextStyle
                      (
                        color: Colors.black.withOpacity(.4),
                        fontSize: 18
                      )
                    ),
                  ),
                  trailing: IconButton(icon: const Icon(FontAwesomeIcons.trash, color: Colors.black), onPressed: (){},)
                ),
                Padding
                (
                  padding: const EdgeInsets.only(right: 16),
                  child: Text
                  (
                    'May 21,2022', 
                    style: TextStyle
                    (
                      color: Colors.black.withOpacity(.4),
                      fontSize: 16
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}