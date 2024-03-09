import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Languages'),
      ),
      body: ListView(children: [
        cardLanguage(
            flagImage: 'assets/icons/circle.png', languageName: 'English'),
        cardLanguage(
            flagImage: 'assets/icons/cambodia.png',
            languageName: 'ភាសាខ្មែរ',
            showLine: false)
      ]),
    );
  }

  Widget cardLanguage(
      {String? flagImage, String? languageName, bool showLine = true}) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(flagImage ?? 'assets/icons/circle.png'),
            maxRadius: 22,
          ),
          title: Text(languageName ?? 'English'),
          trailing: const Icon(Icons.done),
        ),
        if (showLine)
          const Divider(
            thickness: 2,
            endIndent: 10,
            indent: 10,
          )
      ],
    );
  }
}
