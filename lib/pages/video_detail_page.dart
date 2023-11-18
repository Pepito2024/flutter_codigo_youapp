import 'package:flutter/material.dart';
import 'package:flutter_codigo_youapp/ui/general/colors.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoDetailPage extends StatefulWidget {
  const VideoDetailPage({Key? key}) : super(key: key);

  @override
  State<VideoDetailPage> createState() => _VideoDetailPage();
}

class _VideoDetailPage extends State<VideoDetailPage> {
  late YoutubePlayerController _playerController;

  @override
  void initState() {
    super.initState();
    _playerController = YoutubePlayerController(
      initialVideoId: "hCLkVrp_4CE?si=JzIZwxgdKhnPYj91",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      body: Column(
        children: [
          YoutubePlayer(
            controller: _playerController
            ),
        ],
      ),
    );
  }
}
