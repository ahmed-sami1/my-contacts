import 'package:flutter/material.dart';
import 'package:flutter_application_1/start.dart';

class SocialMediaIcon extends StatelessWidget {
  final String socialMedia;
  final String socialMediaLinks;
  SocialMediaIcon({
    required this.socialMedia,
    required this.socialMediaLinks,

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: InkWell(
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/$socialMedia'),
          radius: 40,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  StartSocialMedia(socialMedia: socialMedia, socialMediaLinks: socialMedia,)),
          );
        },
      ),
    );
  }
}
