import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:preload_page_view/preload_page_view.dart';

class HomeScreenViewModel extends GetxController {
  // final pageController = PreloadPageController().obs;
  final pageController = PreloadPageController().obs;

  // bool isPageStable = false;
  final isPageStable = false.obs;
  // int current = 0;
  final current = 0.obs;

  // bool isFirstSelected = false;
  final isFirstSelected = false.obs;

  final videos = <String>[
    'https://assets.mixkit.co/videos/preview/mixkit-young-mother-with-her-little-daughter-decorating-a-christmas-tree-39745-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-taking-photos-from-different-angles-of-a-model-34421-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-winter-fashion-cold-looking-woman-concept-video-39874-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
  ].obs;

  void scrollListener() {
    if (isPageStable.value &&
        pageController.value.page ==
            pageController.value.page!.roundToDouble()) {
      current.value = pageController.value.page!.toInt();
      isPageStable.value = false;
    } else if (!isPageStable.value &&
        current.toDouble() != pageController.value.page) {
      if ((current.toDouble() - pageController.value.page!).abs() > 0.1) {
        isPageStable.value = true;
      }
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    pageController.value = PreloadPageController();
    pageController.value.addListener(scrollListener);
  }
}
