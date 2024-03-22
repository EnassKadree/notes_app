import 'package:flutter/material.dart';
import 'package:ntoes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget 
{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Row
    (
      children: 
      [
        Text('Notes', style: TextStyle(fontSize: 28),),
        const Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}