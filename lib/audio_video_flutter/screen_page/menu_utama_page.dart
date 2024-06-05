import 'package:flutter/material.dart';
import 'package:mobile_3/audio_video_flutter/screen_page/audio_player_page.dart';
import 'package:mobile_3/audio_video_flutter/screen_page/main_audio.dart';
import 'package:mobile_3/audio_video_flutter/screen_page/video_player_page.dart';

class MenuUtamaPage extends StatelessWidget {
  const MenuUtamaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Media Player App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Ubah ini agar penulisan padding benar
          child: ListView(
            children: [
              MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  => AudioPlayerPage()
                  ));
                  },
                child: Text('Audio Player'),
                textColor: Colors.white,
                color: Colors.blueAccent,
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VidioPlayerPage()),
                  );
                },
                child: Text('Video Player'),
                textColor: Colors.white,
                color: Colors.blueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
