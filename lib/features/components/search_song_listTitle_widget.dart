import 'package:flutter/material.dart';

class SearchSongListTitle extends StatelessWidget {
  const SearchSongListTitle(
      {super.key,
      required this.artist,
      required this.imgPath,
      required this.song});
  final String artist;
  final String imgPath;
  final String song;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imgPath),
      title: Text(song),
      subtitle: Text('Song .$artist'),
      trailing: Icon(Icons.menu),
    );
  }
}
