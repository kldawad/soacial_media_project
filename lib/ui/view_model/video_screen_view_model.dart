// import 'package:get/get.dart';
// import 'package:video_player/video_player.dart';
//
//
//
// class VideoScreenViewModel extends GetxController {
//   final playerController = Rxn<VideoPlayerController>();
//   final toggleVideo = false.obs;
//   final initialize = false.obs;
//
//   void start(String url) {
//     playerController.value = VideoPlayerController.network(url);
//     playerController.value!.initialize().then((value) {
//       playerController.value!.setLooping(true);
//       initialize.value = true;
//     });
//   }
//
//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//     start(url);
//
//   }
//
//
//
// }
