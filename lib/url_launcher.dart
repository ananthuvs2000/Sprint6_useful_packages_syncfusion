// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class UrlLauncher extends StatelessWidget {
//   UrlLauncher({Key? key}) : super(key: key);
//   String _url = 'https://www.flipkart.com/';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Url Launcher'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: _launchURL,
//           child: Text('Show Cybersquare website'),
//         ),
//       ),
//     );
//   }

//   void _launchURL() async {
//     if (!await launchUrl(_url as Uri)) throw 'Could not launch $_url';
//   }
// }



import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncher extends StatelessWidget {
  UrlLauncher({Key? key}) : super(key: key);
  String _url = 'https://www.flipkart.com/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Url Launcher'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _launchURL,
          child: Text('Show Cybersquare website'),
        ),
      ),
    );
  }

  void _launchURL() async {
    try {
      if (await canLaunch(_url)) {
        await launch(_url);
      } else {
        throw 'Could not launch $_url';
      }
    } catch (e) {
      throw 'Could not launch $_url';
    }
  }
}
