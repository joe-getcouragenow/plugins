import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {

  final String pageURL = "https://flutter.dev/";

  final String videoId = "fq4N0hgOWzU";

  final String lat = "37.3230";
  final String lng = "-122.0312";

  final String emailAddress = "winwisely99@gmail.com";

  final String telephoneNumber = "01817658822";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('URL Launcher Test Harness'),
      ),
      body: Column(
        children: <Widget>[




          //WEB PAGE
          ListTile(
            title: Center(
              child: Text('Run each demo by selecting the button'),
            ),
          ),


          Center(
            child: ListTile(
              title: Text('Launch Web Page'),
              onTap: () async{
                String webScheme = "web:$pageURL";

                // Web - opens ??

                // Mac - opens ??

                if (await canLaunch(webScheme)) {
                  await launch(webScheme, forceWebView: true);
                } else {
                  throw 'Could not launch $webScheme';
                }
              },
            ),
          ),

          //VIDEO
          Center(
            child: ListTile(
              title: Text('Launch Video'),
              onTap: () async{
                final String google_youtube_URL = "https://www.youtube.com/watch?v=$videoId";
                // try for custom URL Scheme
                final String apple_video_URL = "https://video.apple.com/?v=$videoId";

                // Web - opens browser tab

                // Mac - opens browser tab

                if(await canLaunch((google_youtube_URL))) {
                  await launch(google_youtube_URL);
                }else{
                  throw "Couldn't launch Video";
                }

                // Launch Native Video app ?
                /*
                if(await canLaunch(apple_video_URL)) {
                  await launch(apple_video_URL,forceSafariVC: false);
                }
                */
              },
            ),
          ),

          //MAP
          Center(
            child: ListTile(
              title: Text('Launch Maps'),
              onTap: () async{
                final String googleMapsUrl = "comgooglemaps://?center=$lat,$lng";
                final String appleMapsUrl = "https://maps.apple.com/?q=$lat,$lng";

                // Mac - opens local maps app

                if(await canLaunch((googleMapsUrl))) {
                  await launch(googleMapsUrl);
                }
                if(await canLaunch(appleMapsUrl)) {
                  await launch(appleMapsUrl,forceSafariVC: false);
                }else{
                  throw "Couldn't launch that Map";
                }
              },
            ),
          ),

          //Email
          Center(
            child: ListTile(
              title: Text('Email'),
              onTap: () async{
                String emailScheme = "mailto:$emailAddress";

                // Mac - opens local app OR gmail

                if(await canLaunch(emailScheme)){
                  await launch(emailScheme);
                }else{
                  throw "Can't launch that email app" ;
                }
              },
            ),
          ),

          //SMS
          Center(
            child: ListTile(
              title: Text('SMS'),
              onTap: () async{
                String smsScheme = "sms:$telephoneNumber";

                // Mac - opens iMessage

                if(await canLaunch(smsScheme)){
                  await launch(smsScheme);
                }else{
                  throw "Can't launch that SMS app" ;
                }
              },
            ),
          ),
          
          //TELEPHONE
          Center(
            child: ListTile(
              title: Text('Telephone'),
              onTap: () async{
                String telephoneScheme = "tel:$telephoneNumber";

                // Mac - opens facetime

                if(await canLaunch(telephoneScheme)){
                  await launch(telephoneScheme);
                }else{
                  throw "Can't launch that telephone app" ;
                }
              },
            ),
          )
        ],
      ),
    );
  }
}