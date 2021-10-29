// import 'package:chewie/chewie.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:soacial_media_project/ui/screen/test_video_screen.dart';
// import 'package:soacial_media_project/ui/utils/style/text/text_style.dart';
// import 'package:soacial_media_project/ui/view_model/home_screen_view_model.dart';
// import 'package:video_player/video_player.dart';
//
// HomeScreenViewModel homeScreenViewModel = Get.put(HomeScreenViewModel());
//
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   int count = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return GetX<HomeScreenViewModel>(
//       init: HomeScreenViewModel(),
//       builder: (controller) {
//         return Scaffold(
//           body: GestureDetector(
//             onTap: () {},
//             onDoubleTap: () {},
//             child: SafeArea(
//               child: Stack(
//                 children: [
//                   Container(
//                     color: Colors.orange,
//                     child: PageView.builder(
//                       onPageChanged: (value) {},
//                       itemBuilder: (BuildContext context, int index) {
//                         return VideoScreen(vid: controller.videos[index]);
//                       },
//                       itemCount: controller.videos.length,
//                       scrollDirection: Axis.vertical,
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 10),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "Trending |",
//                           style: kTitleWhite.copyWith(fontSize: 50.sp),
//                         ),
//                         Text(
//                           " My Trend",
//                           style: kTitleWhite.copyWith(fontSize: 50.sp),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
