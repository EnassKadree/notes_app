
import 'package:flutter/material.dart';
import 'package:ntoes_app/constants.dart';
import 'package:ntoes_app/models/note.dart';
import 'package:ntoes_app/views/widgets/color_item.dart';

class EditNoteColorsListView extends StatefulWidget 
{
  const EditNoteColorsListView({super.key, required this.note});
  final Note note;

  @override
  State<EditNoteColorsListView> createState() => _EditNoteColorsListViewState();
}

class _EditNoteColorsListViewState extends State<EditNoteColorsListView> 
{
  late int currentIndex;

@override
  void initState() 
  {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) 
  {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox
      (
        height: 33,
        child: ListView.builder
        (
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index)
          {
            return GestureDetector
            (
              onTap: ()
              {
                currentIndex = index; setState(() { }); 
                widget.note.color = kColors[index].value;
              },
              child: ColorItem(isActive: currentIndex == index, color: kColors[index],)
            );
          }
        ),
      ),
    );
  }
}
