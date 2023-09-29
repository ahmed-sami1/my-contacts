import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

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
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.amber.shade400),
                  ),
                  onPressed: () {
                    launchUrl(Uri.parse(socialMediaLinks),
                        mode: LaunchMode.externalApplication);
                  },
                  child: Text('Start $socialMedia'),
                );
              });
        },
      ),
    );
  }
}
