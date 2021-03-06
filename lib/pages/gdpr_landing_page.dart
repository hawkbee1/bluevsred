import 'package:bluevsred/core/routes.dart';
import 'package:flutter/material.dart';

class GdprLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('GDPR ACCEPTANCE'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('MAKE BLUE vs RED BETTER'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    'Hey! We hope that you\'re exited to try out BLUE vs RED.'),
                Text(
                    'Before you get started through, our team wanted to let you know, upon getting your consent we\'re going to continue improving our game with your device data.'
                    'Specifically, we will using your device data to optimize the gameplay mechanics, application stability, and showing relevant ads which will give you more '
                    'in-game Action Points. As always, we thank you for playing our game and helping us in anyway possible. If you\'re ever not interested in sharing your data,'
                    'you can always adjust your settings at a later time as well.'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        Routes.sailor.navigate('/GdprSettingsPage');
                      },
                      child: Column(
                        children: [
                          Text('MANAGE DATA'),
                          Text('SETTINGS'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        Routes.sailor.navigate('/BoardPage');
                      },
                      child: Column(
                        children: [
                          Text('AWESOME,'),
                          Text('I SUPPORT THAT'),
                        ],
                      ),
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
