import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCircleAvatar extends StatelessWidget {
  final IconData icon;
  final Function()? onTap;

  CustomCircleAvatar({required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: CircleAvatar(
          radius: 70.r,
          backgroundColor: Colors.grey,
          child: Center(
            child: Icon(
              icon,
              size: 80.sp,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
