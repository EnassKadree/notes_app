import 'package:flutter/material.dart';
import 'package:ntoes_app/constants.dart';

class CustomButton extends StatelessWidget 
{
  const CustomButton({required this.title, this.onTap});
  final void Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) 
  {
    return InkWell
    (
      onTap: onTap,
      child: Container
      (
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration
        (
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor
        ),
        child: Center(child: Padding(
          padding: const EdgeInsets.all(6),
          child: Text(title, style: const TextStyle(color: Colors.black, fontSize: 20),),
        )),
      ),
    );
  }
}