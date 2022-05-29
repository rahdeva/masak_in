import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubeScreen extends StatelessWidget {
  final String url = "https://www.youtube.com/results?search_query=";
  final String query;

  const YoutubeScreen({Key? key, required this.query}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
      ),
      // body: WebView(
      //   initialUrl: url + query,
      // ),
    );
  }
}