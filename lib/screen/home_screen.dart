import 'package:flutter/material.dart';
import 'package:runway/widget/container_home_end.dart';
import 'package:video_player/video_player.dart';
import '../core/color_app.dart';
import '../widget/custom_appBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen ({super.key});

  @override
  State<HomeScreen > createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/video/video8.mp4")
      ..initialize().then((_) {
        setState(() {});
       _controller.play();
      })
     ..setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.secondaryColor,
      appBar: const CustomAppBar(
        prefix: "assets/svgs/menu.svg",
        title: "Runway",
        postfix: "assets/svgs/notification.svg",
      ),

      body: Stack(
        children: [
          if (_controller.value.isInitialized)
            SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              ),
            )
          else
            const Center(
              child: CircularProgressIndicator(color:ColorApp.containerColor),
            ),
          if (_controller.value.isInitialized)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ContainerHomeEnd(),
            ),
        ],
      ),

    );
  }
}
