import 'package:audioplayers/audioplayers.dart';
class Audio {
  final player = AudioPlayer();

  void play(int temp)  {
    player.setSource(AssetSource('note$temp.wav'));
     player.resume();
    // return ' ';
  }
  void playvikram(String temp)  {
    player.setSource(AssetSource(temp));
     player.resume();
    // return ' ';
  }

  void stop() {
    player.stop();
  }
}