import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:soacial_media_project/ui/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1080, 1920),
      builder: () => GetMaterialApp(
        theme: ThemeData(
          fontFamily: 'Tajawal',
          primaryColor: Color(0xFF333652),
          accentColor: Color(0xFFFAD02C),
          canvasColor: Color(0xFF90ADC6),
          backgroundColor: Color(0xFFE9EAEC),
        ),
        home: HomeScreen(),
      ),
    );
  }
}
