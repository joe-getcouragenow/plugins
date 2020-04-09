import 'dart:async';

import 'package:flutter/services.dart';

class GcnWebview {
  bool _isReady;
  StreamController<bool> _controller;

  GcnWebview(){
    this._isReady = false;
    this._controller = StreamController<bool>();
  }

  static const MethodChannel _channel =
      const MethodChannel('gcn_webview');

  gcnWebview(String url) async {

    // listen to when the webview is ready
    _channel.setMethodCallHandler((MethodCall methodCall) async{
      if(methodCall.method == "gcnWebviewReady"){
        this._isReady = methodCall.arguments;
        _controller.sink.add(this._isReady);
      }
    });

    // request webview    
    await _channel.invokeMethod('gcnWebview', url);
    dispose();
  }

  static MethodChannel getChannel() {
    return _channel;
  }

  // webview stream controller
  Stream<bool> getStream(){
    return this._controller.stream;
  }

  void dispose(){
    this._controller.close();
  }
}
