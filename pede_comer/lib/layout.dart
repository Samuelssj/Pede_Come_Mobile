import 'package:flutter/material.dart';
import 'package:flutter/Widgets.dart';

class layout {
  static Widget render({
    Widget content,
    Widget fab,
  }) {
    return Scaffold(
      // backgroundColor: Colors.black38,
      body: SafeArea(
        minimum: const EdgeInsets.all(30),
        child: content,
      ),
      floatingActionButton: fab,
    );
  }
}
