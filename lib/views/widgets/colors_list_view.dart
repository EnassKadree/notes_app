
import 'package:flutter/material.dart';

class ColorsListView extends StatefulWidget 
{
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> 
{
  int currentIndex = 0;
  List<Color> colors = const
  [
    Color(0xff8e7dbe),
    Color(0xff99c1b9),
    Color(0xfff1e3d3),
    Color(0xfff2d0a9),
    Color(0xffd88c9a),
  ];
  @override
  Widget build(BuildContext context) 
  {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: SizedBox
      (
        height: 32,
        child: ListView.builder
        (
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index)
          {
            return GestureDetector
            (
              onTap: (){ currentIndex = index; setState(() { }); },
              child: ColorItem(isActive: currentIndex == index, color: colors[index],)
            );
          }
        ),
      ),
    );
  }
}

class ColorItem extends StatelessWidget 
{
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) 
  {
    return Padding
    (
      padding:  const EdgeInsets.symmetric(horizontal: 8),
      child: CircleAvatar
      (
        radius: 16,
        backgroundColor: isActive? Colors.white : Colors.grey,
        child: CircleAvatar
        (
          radius: 15,
          backgroundColor: color,
          
        ),
      ),
    );
  }
}
