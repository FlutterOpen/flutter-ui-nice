///
/// Created by NieBin on 2018/12/25
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";

class WalkThPageOne extends StatefulWidget {
  @override
  _WalkThState createState() => _WalkThState();
}

class _WalkThState extends State<WalkThPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Walk through one"),
      ),
      body: Text("Walk through page one"),
    );
  }
}
