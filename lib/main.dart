import 'package:audio_learning/video_items.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(Home());

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: Text('Flutter Video Player Demo'),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1204-large.mp4'),
              looping: false,
              autoplay: true,
            ),  VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1205-large.mp4'),
              looping: false,
              autoplay: true,
            ),  VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1206-large.mp4'),
              looping: false,
              autoplay: true,
            ),  VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1207-large.mp4'),
              looping: false,
              autoplay: true,
            ),  VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1208-large.mp4'),
              looping: false,
              autoplay: true,
            ),  VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1209-large.mp4'),
              looping: false,
              autoplay: true,
            ),  VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1210-large.mp4'),
              looping: false,
              autoplay: true,
            ),  VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1211-large.mp4'),
              looping: false,
              autoplay: true,
            ),  VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1212-large.mp4'),
              looping: false,
              autoplay: true,
            ),  VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1213-large.mp4'),
              looping: false,
              autoplay: true,
            ),  VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1214-large.mp4'),
              looping: false,
              autoplay: true,
            ),  VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1215-large.mp4'),
              looping: false,
              autoplay: true,
            ),  VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1216-large.mp4'),
              looping: false,
              autoplay: true,
            ), VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1217-large.mp4'),
              looping: false,
              autoplay: true,
            ), VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1218-large.mp4'),
              looping: false,
              autoplay: true,
            ), VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1219-large.mp4'),
              looping: false,
              autoplay: true,
            ),   VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1220-large.mp4'),
              looping: false,
              autoplay: true,
            ),   VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1221-large.mp4'),
              looping: false,
              autoplay: true,
            ),   VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1222-large.mp4'),
              looping: false,
              autoplay: true,
            ),   VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1223-large.mp4'),
              looping: false,
              autoplay: true,
            ),VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1224-large.mp4'),
              looping: false,
              autoplay: true,
            ),VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1225-large.mp4'),
              looping: false,
              autoplay: true,
            ), VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'),
              looping: false,
              autoplay: true,
            ),
            VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1227-large.mp4'),
              looping: false,
              autoplay: true,
            ),
            VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1228-large.mp4'),
              looping: false,
              autoplay: true,
            ),
            VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1229-large.mp4'),
              looping: false,
              autoplay: true,
            ),
            VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1230-large.mp4'),
              looping: false,
              autoplay: true,
            ),
            VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1231-large.mp4'),
              looping: false,
              autoplay: true,
            ),  VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1232-large.mp4'),
              looping: false,
              autoplay: true,
            ),  VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1233-large.mp4'),
              looping: false,
              autoplay: true,
            ),  VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1234-large.mp4'),
              looping: false,
              autoplay: true,
            ),  VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1235-large.mp4'),
              looping: false,
              autoplay: true,
            ),  VideoItems(
              videoPlayerController: VideoPlayerController.network(
                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1236-large.mp4'),
              looping: false,
              autoplay: true,
            ),
          ],
        ),
      ),
    );
  }
}
