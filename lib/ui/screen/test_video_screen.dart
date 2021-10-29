// import 'package:chewie/chewie.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:soacial_media_project/ui/utils/style/text/text_style.dart';
// import 'package:video_player/video_player.dart';
//
// class VideoScreen extends StatefulWidget {
//   final String vid;
//   // final bool shutDown;
//
//   VideoScreen({required this.vid});
//
//   @override
//   _VideoScreenState createState() => _VideoScreenState();
// }
//
// class _VideoScreenState extends State<VideoScreen> {
//   VideoPlayerController? _videoPlayerController;
//   ChewieController? _chewieController;
//
//   double test = 30;
//
//   bool toggleVideo = false;
//
//   Future initializePlayer() async {
//     _videoPlayerController = VideoPlayerController.network(widget.vid);
//     await Future.wait([_videoPlayerController!.initialize()]);
//     _chewieController = ChewieController(
//       videoPlayerController: _videoPlayerController!,
//       autoPlay: true,
//       looping: true,
//       allowedScreenSleep: false,
//       showOptions: false,
//       customControls: Padding(
//         padding: EdgeInsets.only(bottom: 5, right: 10, left: 5),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Text(
//                   "Title",
//                   style: kTitleWhite.copyWith(fontSize: 50.sp),
//                 ),
//                 Text(
//                   "Date And Time",
//                   style: kTitleWhite,
//                 ),
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 RotatedBox(
//                   quarterTurns: -1,
//                   child: Slider(
//                     activeColor: Colors.white,
//                     inactiveColor: Colors.white,
//                     min: 0,
//                     max: 80,
//                     value: test,
//                     onChanged: (value) {
//                       setState(() {
//                         test = value;
//                       });
//                     },
//                   ),
//                 ),
//                 CircleAvatar(
//                   backgroundColor: Colors.green,
//                   radius: 60.sp,
//                   child: CircleAvatar(
//                     backgroundColor: Colors.red,
//                     radius: 30.sp,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//     setState(() {});
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     initializePlayer();
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _videoPlayerController!.dispose();
//     _chewieController!.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return _chewieController != null &&
//             _chewieController!.videoPlayerController.value.isInitialized
//         ? GestureDetector(
//             onTap: () {
//               toggleVideo = !toggleVideo;
//               setState(() {
//                 toggleVideo
//                     ? _chewieController!.pause()
//                     : _chewieController!.play();
//               });
//             },
//             child: Chewie(
//               controller: _chewieController!,
//             ),
//           )
//         : Center(
//             child: CircularProgressIndicator(),
//           );
//   }
// }
