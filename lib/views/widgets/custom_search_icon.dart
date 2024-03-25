import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget 
{
  const CustomSearchIcon({required this.icon, required this.onPressed});
  final IconData icon; 
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      width: 46,
      height: 46,
      decoration: BoxDecoration
      (
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(child: IconButton(icon: Icon(icon),onPressed: onPressed,),),
    );
  }
}