import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoItems extends StatefulWidget {
   final  VideoPlayerController videoPlayerController;
  final bool? looping;
  final bool? autoplay;


  const VideoItems({Key? key,
    required this.videoPlayerController,
    this.looping, this.autoplay,
  }) : super(key: key) ;

  @override
  _VideoItemsState createState() => _VideoItemsState();
}

class _VideoItemsState extends State<VideoItems> {
 late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      allowFullScreen: true,
      videoPlayerController: widget.videoPlayerController,
      // aspectRatio:5/8,
      autoInitialize: true,
      autoPlay: widget.autoplay!,
      looping: widget.looping!,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Chewie(

        controller: _chewieController,
      ),
    );
  }

}