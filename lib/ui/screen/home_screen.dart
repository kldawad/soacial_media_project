import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:soacial_media_project/ui/screen/video_screen.dart';
import 'package:soacial_media_project/ui/utils/style/text/text_style.dart';
import 'package:soacial_media_project/ui/view_model/home_screen_view_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<HomeScreenViewModel>(
      init: HomeScreenViewModel(),
      builder: (controller) {
        return Scaffold(
          body: GestureDetector(
            onTap: () {},
            onDoubleTap: () {},
            child: SafeArea(
              child: Stack(
                children: [
                  Container(
                    color: Colors.orange,
                    child: PageView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return VideoScreen(
                          vid: controller.videos[index],
                        );
                      },
                      itemCount: controller.videos.length,
                      scrollDirection: Axis.vertical,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Trending |",
                          style: kTitleWhite.copyWith(fontSize: 50.sp),
                        ),
                        Text(
                          " My Trend",
                          style: kTitleWhite.copyWith(fontSize: 50.sp),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10, right: 10),
                    child: Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 80.sp,
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 40.sp,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
