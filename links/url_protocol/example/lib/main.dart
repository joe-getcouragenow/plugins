import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:url_protocol/url_protocol.dart';

void main() {
  runApp(MyApp());
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Text("Home") ,
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final message;

  SecondScreen({this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  final message;

  ThirdScreen({this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
  UrlProtocol urlProtocol;
  String message;

  @override
  void initState() {
    super.initState();
    urlProtocol = UrlProtocol();
    initRoute();
  }

  initRoute() {
    urlProtocol.getStream().listen((event) {
      if(event){
        message = urlProtocol.query["message"][0];
        navigatorKey.currentState.pushNamed(urlProtocol.route);
      }
      return;
    });
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/second':
        return MaterialPageRoute(builder: (_) => SecondScreen(message:message));
      case '/third':
        return MaterialPageRoute(builder: (_) => ThirdScreen(message:message));
      default:
        return MaterialPageRoute(builder: (_) => FirstScreen());
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: generateRoute,
      navigatorKey: navigatorKey,
    );
  }
}
