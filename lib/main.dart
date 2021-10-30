import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:soacial_media_project/ui/screen/main_screen.dart';

void main() {
  runApp(MyApp());
}

// TextTheme? textTheme;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // textTheme = Theme.of(context).textTheme;
    return ScreenUtilInit(
      designSize: Size(1080, 1920),
      builder: () => GetMaterialApp(
        theme: ThemeData(
          fontFamily: 'Tajawal',
          primaryColor: Color(0xFF0F3157),
          accentColor: Color(0xFF1594E5),
          backgroundColor: Color(0xFF0D1426),
          canvasColor: Colors.orange,
          scaffoldBackgroundColor: Color(0xFF0D1426),
          shadowColor: Colors.black,
          cardColor: Color(0xFF0F3157),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.orange),
          )),
          textTheme: TextTheme(
            bodyText2: TextStyle(
              color: Colors.white,
            ),
            headline6: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        home: MainScreen(),
      ),
    );
  }
}
