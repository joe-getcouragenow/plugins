import 'dart:convert';
import 'dart:collection';
import 'dart:async';

import 'package:flutter/services.dart';

class UrlProtocol {
  String route;
  String host;
  String scheme;
  LinkedHashMap<String, dynamic> query;
  StreamController<bool> streamCtl;

  // LinkedHashMap<String, dynamic>'
  static const MethodChannel _channel =
      const MethodChannel('url_protocol');

  UrlProtocol(){
    this.streamCtl = StreamController<bool>();
    this.query = LinkedHashMap<String, dynamic>();
    _getRoute();
  }

  _getRoute() async {
    final args = await _channel.invokeMethod("getRoute");
    final data = json.decode(args);

    this.route = data["route"];
    this.host = data["host"];
    this.scheme = data["scheme"];
    this.query = data["params"];

    this.streamCtl.sink.add(true);
  }

  Stream<bool> getStream(){
    return this.streamCtl.stream;
  }

  dispose(){
    this.streamCtl.close();
  }
}
