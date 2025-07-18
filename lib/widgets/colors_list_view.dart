import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isactive, required this.color});
  final bool isactive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isactive?  CircleAvatar(
      radius: 38.r,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 34.r,
        backgroundColor: color,
      ),
    ) : CircleAvatar(
      radius: 38.r,
      backgroundColor: color,
    );
  }
}

class ColorsLstView extends StatefulWidget {
  const ColorsLstView({super.key});

  @override
  State<ColorsLstView> createState() => _ColorsLstViewState();
}

class _ColorsLstViewState extends State<ColorsLstView> {
  int currentInex = 0;
  List<Color> colors = [
    Color(0xffaac3fa),
    Color(0xff85a7f1),
    Color(0xff618be7),
    Color(0xff3d6edc),
    Color(0xff194fd0),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2.h,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child:  GestureDetector(
                onTap: () {
                  currentInex = index;
                  setState(() {
                    
                  });
                },
                child: ColorItem(
                  color: colors[index],
                  isactive: currentInex == index,
                ),
              ),
            );
          }),
    );
  }
}
