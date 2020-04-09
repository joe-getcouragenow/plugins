import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gcn_webview/gcn_webview.dart';

import 'dart:async';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // ready used to check if webview is open or closed
  bool isActive = false;
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> openWebview() async {
    
    // Receive a signal when webview windows is showen and ready
    GcnWebview gcnWV = GcnWebview();
    gcnWV.getStream().listen((ready) {
      setState(() {
        isActive = ready;
      });
    });

    // Request webview windows for desktop
    try{
      await gcnWV.gcnWebview(_controller.text == ""?"https://youtube.com":_controller.text);
      // Update states when webview is closed
      setState(() {
        this.isActive = false;
      });
    }on Exception {
      print('Failed to open webview.');
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Webview'),
        ),
        body: Center(
          child: Column(
            children: [
              isActive?Text('Webview is Active'): Text('Webview is Not Active'),
              TextField(
                decoration: InputDecoration(
                  labelText: "Url",
                  hintText: 'https://youtube.com',
                ),
                controller: _controller,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){openWebview();},
          child: Icon(Icons.voice_chat),
          ),
      ),
    );
  }
}
