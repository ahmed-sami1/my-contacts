
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StartSocialMedia extends StatelessWidget {
  String socialMedia;
  String socialMediaLinks;
  StartSocialMedia({
    super.key,
    required this.socialMedia,
    required this.socialMediaLinks,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 7, 30),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber.shade400,
          ),
          onPressed: () {
            launchUrl(Uri.parse(socialMediaLinks),
                mode: LaunchMode.externalApplication);
          },
          child: Text('Start Social Media'),
        ),
      ),
    );
  }
}
