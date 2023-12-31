import 'package:flutter/material.dart';
import 'package:mediations_app/models/item_model.dart';
import 'package:just_audio/just_audio.dart';

class MainScreen extends StatelessWidget {


  final AudioPlayer audioPlayer = AudioPlayer();


  List<Item> items = [
    Item(
      name: "Forest Sounds",
      imagePath: "meditation_images/forest.jpeg",
      audioPath: "meditation_audios/forest.mp3",
    ),

    Item(
      name: "Ocean Breeze",
      imagePath: "meditation_images/ocean.jpeg",
      audioPath: "meditation_audios/ocean.mp3",
    ),

    Item(
      name: "Night Sounds",
      imagePath: "meditation_images/night.jpeg",
      audioPath: "meditation_audios/night.mp3",
    ),

    Item(
      name: "Wind Evening",
      imagePath: "meditation_images/wind.jpeg",
      audioPath: "meditation_audios/wind.mp3",
    ),

    Item(
      name: "Waterfall",
      imagePath: "meditation_images/waterfall.jpeg",
      audioPath: "meditation_audios/waterfall.mp3",
    ),
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(items[index].imagePath)
                  )
                ),
                child: ListTile(
                  leading: Text(items[index].name),
                  trailing: IconButton(
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {
                      audioPlayer.setAsset(items[index].audioPath);
                      audioPlayer.play();
                    },
                  ),
                )
              ),
            );

          },
        ),
      ),
    );
  }
}
