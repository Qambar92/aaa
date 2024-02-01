import 'package:aaa/pages/detail_page.dart';
import 'package:flutter/material.dart';

import 'package:record/record.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Record audioRecourd;
  late AudioPlayer audioPlayer;
  bool isRecording = false;
  String audioPath = "";

  @override
  void initState() {
    audioPlayer = AudioPlayer();
    audioRecourd = Record();
    super.initState();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    audioRecourd.dispose();
    super.dispose();
  }

  Future<void> startRecording() async {
    try {
      if (await audioRecourd.hasPermission()) {
        await audioRecourd.start();
        setState(() {
          isRecording = true;
        });
      }
    } catch (e) {
      print("Error Start Recording : $e");
    }
  }

  Future<void> stopRecording() async {
    try {
      String? path = await audioRecourd.stop();
      setState(() {
        isRecording = false;
        audioPath = path!;
      });
    } catch (e) {
      print("Error stoping record : $e");
    }
  }

  Future<void> playRecording() async {
    try {
      Source urlSource = UrlSource(audioPath);
      await audioPlayer.play(urlSource);
    } catch (e) {
      print("Error playing Recording : $e");
    }
  }

  Future _openDetail() async {
    Navigator.of(context)
        .push(new MaterialPageRoute(builder: (BuildContext contex) {
      return new DetailPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Audio Recorder"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isRecording)
              const Text(
                "Recording in Pragress",
                style: TextStyle(fontSize: 20),
              ),
            ElevatedButton(
              onPressed: isRecording ? stopRecording : startRecording,
              child: isRecording
                  ? const Text("Stop Recording")
                  : const Text("Start Recording"),
            ),
            SizedBox(
              height: 25,
            ),
            if (!isRecording)
              ElevatedButton(
                onPressed: playRecording,
                child: const Text("Play Recording"),
              )
          ],
        ),
      ),
    );
  }
}
