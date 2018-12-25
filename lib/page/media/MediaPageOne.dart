///
/// Created by NieBin on 2018/12/25
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";

class MediaPageOne extends StatefulWidget {
  @override
  _MediaState createState() => _MediaState();
}

class _MediaState extends State<MediaPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Media one"),
      ),
      body: Text("Media page one"),
    );
  }
}
