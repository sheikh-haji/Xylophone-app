import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:xylophone/audio.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home:Scaffold(body:XylophoneApp())));
}

class XylophoneApp extends StatelessWidget {
  Audio player=new Audio();
  void playsound(int temp) {
    player.play(temp);
  }
 Widget buildKey(int temp,Color color1){
    return Expanded(
      child: TextButton(
          child: Container(
            color: color1,
            width: double.infinity,
            // height: 100,
          ),
          onPressed: () {
            playsound(temp);
          },
          style: TextButton.styleFrom(padding: EdgeInsets.zero)),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buildKey(1, Colors.red),
              buildKey(2, Colors.orangeAccent),
              buildKey(3, Colors.yellowAccent),

              buildKey(5, Colors.greenAccent),
              buildKey(6, Colors.blue),
              buildKey(7, Colors.deepPurpleAccent),
              Expanded(
                child: TextButton(
                    child: Container(
                      child:Center(
                        child: Text("Vikram",
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 40.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      color: Colors.grey,
                      width: double.infinity,
                      // height: 100,
                    ),
                    onPressed: () {
                      player.playvikram('vikram.wav');
                    },
                    style: TextButton.styleFrom(padding: EdgeInsets.zero)),
              ),
              Expanded(
                child: TextButton(

                    child:Container(
                      child: Center(
                        child: Text("Rolex Theme",
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 40.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      color: Colors.grey,
                      width: double.infinity,
                    ),

                    // height: 100,

                    onPressed: () {

                      player.playvikram('vikram3.wav');
                    },
                    style: TextButton.styleFrom(padding: EdgeInsets.zero)),
              ),Expanded(
                child: TextButton(

                      child:Container(
                        child: Center(
                          child: Text("Rolex",
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 40.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        color: Colors.grey,
                        width: double.infinity,
                      ),

                      // height: 100,

                    onPressed: () {

                      player.playvikram('rolex.wav');
                    },
                    style: TextButton.styleFrom(padding: EdgeInsets.zero)),
              ),
              Expanded(
                child: TextButton(

                    child:Container(
                      child: Center(
                        child: Text("Aarambikkalamgala",
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 40.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      color: Colors.grey,
                      width: double.infinity,
                    ),

                    // height: 100,

                    onPressed: () {

                      player.playvikram('vikram2.wav');
                    },
                    style: TextButton.styleFrom(padding: EdgeInsets.zero)),
              ),
              Expanded(
                child: TextButton(

                    child:Container(
                      child: Center(
                        child: Text("Loki Universe",
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 40.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      color: Colors.grey,
                      width: double.infinity,
                    ),

                    // height: 100,

                    onPressed: () {
                      // try {
                      //   if (player.player.playing) {
                      //     player.stop();
                      //   } else {
                      //     player.playvikram('vikram4.wav');
                      //   }
                      // } catch (e) {
                      //   player.playvikram('vikram4.wav');
                      // }
                      player.playvikram('vikram4.wav');
                    },
                    style: TextButton.styleFrom(padding: EdgeInsets.zero)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
