import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:soacial_media_project/ui/screen/profile_screen.dart';
import 'package:soacial_media_project/ui/screen/widgets/custom_circle_avatar.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  final String videoUrl;
  final int pageIndex;
  final int currentPageIndex;

  VideoScreen(
      {required this.videoUrl,
      required this.currentPageIndex,
      required this.pageIndex});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  VideoPlayerController? _playerController;
  bool initialize = false;
  bool toggleVideo = false;
  // bool show = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _playerController = VideoPlayerController.network(widget.videoUrl);
    _playerController!.initialize().then((value) {
      setState(() {
        _playerController!.setLooping(true);
        initialize = true;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _playerController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (initialize == true && widget.currentPageIndex == widget.pageIndex) {
      _playerController!.seekTo(Duration(milliseconds: 0));
      _playerController!.play();
    } else {
      _playerController!.pause();
    }
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            print('playingStatus:: ${_playerController!.value.isPlaying}');
            _playerController!.value.isPlaying
                ? _playerController!.pause()
                : _playerController!.play();
          },
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: VideoPlayer(_playerController!),
              ),
              VideoProgressIndicator(
                _playerController!,
                allowScrubbing: true,
                colors: VideoProgressColors(),
              ),
              Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomCircleAvatar(
                      icon: Icons.person_outline,
                      onTap: () {
                        Get.to(() => ProfileScreen());
                      },
                    ),
                    CustomCircleAvatar(
                      icon: Icons.format_indent_increase,
                    ),
                    CustomCircleAvatar(
                      icon: Icons.chat,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomCircleAvatar(icon: Icons.error),
                          CustomCircleAvatar(icon: Icons.star),
                          CustomCircleAvatar(icon: Icons.campaign),
                          CustomCircleAvatar(icon: Icons.file_download),
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 70.r,
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 40.r,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
