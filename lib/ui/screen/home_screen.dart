import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:preload_page_view/preload_page_view.dart';
import 'package:soacial_media_project/ui/screen/video_screen.dart';
import 'package:soacial_media_project/ui/view_model/home_screen_view_model.dart';
import 'package:soacial_media_project/ui/view_model/video_screen_view_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PreloadPageController? _pageController;

  bool isPageStable = false;
  int current = 0;
  bool isFirstSelected = false;

  List videos = [
    'https://assets.mixkit.co/videos/preview/mixkit-young-mother-with-her-little-daughter-decorating-a-christmas-tree-39745-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-taking-photos-from-different-angles-of-a-model-34421-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-winter-fashion-cold-looking-woman-concept-video-39874-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
  ];

  void scrollListener() {
    if (isPageStable &&
        _pageController!.page! == _pageController!.page!.roundToDouble()) {
      setState(() {
        current = _pageController!.page!.toInt();
        isPageStable = false;
      });
    } else if (!isPageStable && current.toDouble() != _pageController!.page) {
      if ((current.toDouble() - _pageController!.page!).abs() > 0.1) {
        setState(() {
          isPageStable = true;
        });
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PreloadPageController();

    _pageController!.addListener(scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: PreloadPageView.builder(
            onPageChanged: (value) {
              print('controll:: ${_pageController!.page!.roundToDouble()}');
            },
            controller: _pageController!,
            preloadPagesCount: 2,
            scrollDirection: Axis.vertical,
            itemCount: videos.length,
            itemBuilder: (context, index) {
              return VideoScreen(
                videoUrl: videos[index],
                pageIndex: index,
                currentPageIndex: current,
              );
            }),
      ),
    );
  }
}
