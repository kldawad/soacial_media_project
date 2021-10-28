import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soacial_media_project/ui/utils/style/text/text_style.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  final String vid;

  VideoScreen({required this.vid});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;

  Future initializePlayer() async {
    _videoPlayerController = VideoPlayerController.network(widget.vid);
    await Future.wait([_videoPlayerController!.initialize()]);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController!,
      autoPlay: true,
      looping: true,
      allowedScreenSleep: false,
      showOptions: false,
      customControls: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Row(
            children: [
              Spacer(),
              RotatedBox(
                quarterTurns: -1,
                child: Slider(
                  value: 0.5,
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
          Text(
            "Title",
            style: kTitleWhite.copyWith(fontSize: 50.sp),
          ),
          Text(
            "Date And Time",
            style: kTitleWhite,
          ),
        ],
      ),
    );
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _videoPlayerController!.dispose();
    _chewieController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _chewieController != null &&
            _chewieController!.videoPlayerController.value.isInitialized
        ? Chewie(
            controller: _chewieController!,
          )
        : Center(
            child: CircularProgressIndicator(),
          );
  }
}
