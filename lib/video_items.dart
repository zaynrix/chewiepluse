import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoItems extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool? looping;
  final bool? autoplay;

  const VideoItems({
    Key? key,
    required this.videoPlayerController,
    this.looping,
    this.autoplay,
  }) : super(key: key);

  @override
  _VideoItemsState createState() => _VideoItemsState();
}

class _VideoItemsState extends State<VideoItems> {
  // Chewie Controller
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    // Initialized Controller and Arguments
    setState(() {
      _chewieController = ChewieController(
        allowFullScreen: true,
        showOptions: true,
        // aspectRatio: MediaQuery.of(context).size.width/ MediaQuery.of(context).size.height,

        showControlsOnInitialize: true,
        // Video : assets-network-files
        videoPlayerController: widget.videoPlayerController,
        showControls: false,
        cupertinoProgressColors: ChewieProgressColors(
            playedColor: Colors.red,
            backgroundColor: Colors.red,
            bufferedColor: Colors.red,
            handleColor: Colors.red),
        materialProgressColors: ChewieProgressColors(
            playedColor: Colors.red,
            backgroundColor: Colors.red,
            bufferedColor: Colors.red,
            handleColor: Colors.red),
        autoInitialize: true,
        autoPlay: widget.autoplay!,
        looping: widget.looping!,
        // Error Builder
        placeholder: const Center(
            child: CircularProgressIndicator(
          color: Colors.red,
        )),
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Text(
              errorMessage,
              style: const TextStyle(color: Colors.white),
            ),
          );
        },
      );
    });
  }
  bool favourite = false;
  bool special = false;

  // Dispose Controller
  @override
  void dispose() {
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Chewie(
            controller: _chewieController,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      favourite =!favourite;
                    });
                  },
                  icon:  Icon(
                    Icons.favorite,
                    color:favourite==true? Colors.red:Colors.white,
                    size: 36,
                  )),
              const Text(
                "85.1K",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.comment,
                    color: Colors.white,
                    size: 36,
                  )),
              const Text(
                "85.1K",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      special=!special;
                    });
                  },
                  icon: Icon(
                    Icons.assistant_photo_rounded,
                    color:special==true? Colors.yellow:Colors.white,
                    size: 36,
                  )),
              const Text(
                "201",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.reply_outlined,
                    color: Colors.white,
                    size: 36,
                  )),
              const Text(
                "201",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 30,
          left: 10,
          // alignment: Alignment.bottomRight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: const [
              Text(
                "@Username",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lorem ipesum Text style Desciptios",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
