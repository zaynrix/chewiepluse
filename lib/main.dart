import 'package:audio_learning/video_items.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<String> links = [
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1204-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1205-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1206-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1207-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1208-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1209-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1210-large.mp4'
  ];

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      backgroundColor: Colors.transparent,
      // appBar:
      // floatingActionButton:
      body: Stack(
        children: [
          PageView.builder(
            itemCount: links.length,
            itemBuilder: (context, index) => VideoItems(
              videoPlayerController:
                  VideoPlayerController.network(links[index]),
              looping: true,
              autoplay: true,
            ),
            scrollDirection: Axis.vertical,
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title:  Center(
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child:const Text(
                        "Following",
                        style: TextStyle(color: Colors.white,fontSize: 20),
                      ),
                      onPressed: (){},
                    ), TextButton(
                      child:const Text(
                        "For You",
                        style: TextStyle(color: Colors.white,fontSize: 20),
                      ),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
