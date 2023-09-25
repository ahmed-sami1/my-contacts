import 'package:flutter/material.dart';

import 'social_media_icons.dart';

class ContactGrid extends StatelessWidget {
  const ContactGrid({
    super.key,
    required this.socialMedia,
  });

  final Map<String, String> socialMedia;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: socialMedia.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3),
      itemBuilder: (context, index) {
        return SocialMediaIcon(
          socialMedia: socialMedia.keys.toList()[index],
          socialMediaLinks: socialMedia.values.toList()[index],
        );
      },
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(20),
    );
  }
}