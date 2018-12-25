///
/// Created by NieBin on 2018/12/25
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";

class CameraPageOne extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<CameraPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera one"),
      ),
      body: Text("Camera page one"),
    );
  }
}
