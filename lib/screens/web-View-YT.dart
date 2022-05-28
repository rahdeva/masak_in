import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  final String url = "https://www.youtube.com/results?search_query=";
  final String query;

  const WebViewScreen({Key? key, required this.query}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
      ),
      body: WebView(
        initialUrl: url + query,
      ),
    );
  }
}