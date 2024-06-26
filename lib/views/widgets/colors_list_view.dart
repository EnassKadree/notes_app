
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ntoes_app/constants.dart';
import 'package:ntoes_app/cubits/add%20note%20cubit/add_note_cubit.dart';
import 'package:ntoes_app/views/widgets/color_item.dart';

class ColorsListView extends StatefulWidget 
{
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> 
{
  int currentIndex = 0;

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
                BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
              },
              child: ColorItem(isActive: currentIndex == index, color: kColors[index],)
            );
          }
        ),
      ),
    );
  }
}
