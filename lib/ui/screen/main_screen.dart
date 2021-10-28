import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:soacial_media_project/ui/screen/home_screen.dart';
import 'package:soacial_media_project/ui/utils/constants.dart';
import 'package:soacial_media_project/ui/utils/style/text/text_style.dart';
import 'package:soacial_media_project/ui/view_model/main_screen_view_model.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<MainScreenViewModel>(
      init: MainScreenViewModel(),
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Stack(
              alignment: AlignmentDirectional(0, -0.5),
              children: [
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 100.h),
                        color: Colors.orange,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Profile",
                            style: kTitleWhite.copyWith(fontSize: 100.sp),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 30.h),
                        child: Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller.info.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(HomeScreen());
                                      },
                                      child: ListTile(
                                        minLeadingWidth: 0,
                                        leading: Icon(
                                          controller.info[index]["icon"],
                                          color: Colors.black,
                                          size: 100.sp,
                                        ),
                                        title: Text(
                                          controller.info[index]["title"],
                                          style: kTitleBlack.copyWith(
                                            fontSize: 50.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Divider(),
                                  ],
                                );
                              }),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(50.w, 0, 50.w, 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.settings),
                          ),
                          CircleAvatar(
                            child: Icon(Icons.videocam),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 500.h,
                  width: width,
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(
                              'https://shiftart.com/wp-content/uploads/2017/04/RC-Profile-Square.jpg'),
                        ),
                        Text(
                          "Khaled Awad",
                          style: kTitleBlack.copyWith(fontSize: 60.sp),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
