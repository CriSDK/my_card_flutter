import 'package:flutter/material.dart';

import '../styles/text_style.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  static List<String> nameSocialNetworkImage = [
    'ChatGPT_logo.svg.png',
    'twiter.png',
    'instagram.png'
  ];

  static String pathimages = 'assets/images/';

  static SizedBox imageSeparator = const SizedBox(
    width: 40,
    height: 60,
  );

  List<Widget> getSocialNetworkImages() {
    List<Widget> assetImage = [];
    int count = 0;

    for (String item in nameSocialNetworkImage) {
      assetImage.add(Image(
        image: AssetImage(
          '$pathimages$item',
        ),
        width: 60,
        height: 60,
      ));

      if (count < 2) {
        assetImage.add(imageSeparator);
      }
      count++;
    }
    return assetImage;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(
                  'assets/images/avatar.jpeg',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 7,
                  top: 7,
                ),
                child: Text(
                  'Brallan Asca Arevalo',
                  style: nameStyle,
                ),
              ),
              const Text(
                'FLUTTER DEVELOPER',
                style: jobStyle,
              ),
              const Center(
                child: SizedBox(
                  width: 240,
                  child: Divider(
                    color: Colors.white60,
                    thickness: 1.4,
                    // indent: 8, // es como un margin left
                    // endIndent: 8, // es como un margin rigth
                  ),
                ),
              ),
              const Card(
                elevation: 12,
                margin: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 18,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  title: Text(
                    '+ 51 922 343 628',
                    style: contactInformationtyle,
                  ),
                  subtitle: Text(
                    'Teléfono',
                    style: contactInformationtyle,
                  ),
                  trailing: Icon(
                    Icons.check_circle_outlined,
                    color: Colors.blue,
                  ),
                ),
              ),
              const Card(
                elevation: 12, // esta es una pequeña sombra
                margin: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 18,
                ),
                child: ListTile(
                  title: Text(
                    'brayam05@gmail.com',
                    style: contactInformationtyle,
                  ),
                  subtitle: Text(
                    'Correo Electrónico',
                    style: contactInformationtyle,
                  ),
                  leading: Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                  trailing: Icon(
                    Icons.check_circle_outline,
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: getSocialNetworkImages(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
