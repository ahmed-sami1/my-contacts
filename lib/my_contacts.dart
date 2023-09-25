import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/contacts_grid.dart';

class MyContacts extends StatelessWidget {
  MyContacts({super.key});
  Map<String, String> socialMedia = {
    'facebook.png': 'https://www.facebook.com/profile.php?id=100008466281338',
    'instagram.png': 'https://www.instagram.com/yasseradel1597/',
    'youtube.png': 'https://www.youtube.com/@DrHazemShouman',
    'whatsapp.jpg': 'https://wa.me/+201148800207',
    'telegram.png': 'https://telegram.me/+201148800207',
    // 'linkedin.png',
    // 'twitter.png',
    // 'snapchat.png',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 7, 30),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 90,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/ahmed.jpg'),
                radius: 150,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Ahmed Samy',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '+201148800207',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      launchUrl(Uri.parse('tel:+201148800207'));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ContactGrid(socialMedia: socialMedia),
            ],
          ),
        ),
      ),
    );
  }
}
