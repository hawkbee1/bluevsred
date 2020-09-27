import 'package:bluevsred/core/routes.dart';
import 'package:flutter/material.dart';

class GdprSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('GDPR settings'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Here\'s the control below to adjust which data we can utilize:'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  AnalyticsSwitch(),
                  Text('Partners: Google, Firebase'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  AdvertisingSwitch(),
                  Text('Partners: Google Admob'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Here\'s links to our partners policy '),
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
              child: RaisedButton(
                onPressed: () {
                  Routes.sailor.navigate('/BoardPage');
                },
                child: Column(
                  children: [
                    Text('ACCEPT'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AdvertisingSwitch extends StatefulWidget {
  const AdvertisingSwitch({
    Key key,
  }) : super(key: key);

  @override
  _AdvertisingSwitchState createState() => _AdvertisingSwitchState();
}

class _AdvertisingSwitchState extends State<AdvertisingSwitch> {
  bool isSwitchedAdvertising = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
          key: Key('AdvertisingSwitch'),
          value: isSwitchedAdvertising,
          onChanged: (value) {
            setState(() {
              isSwitchedAdvertising = value;
            });
          },
        ),
        Text('Advertising')
      ],
    );
  }
}

class AnalyticsSwitch extends StatefulWidget {
  const AnalyticsSwitch({
    Key key,
  }) : super(key: key);

  @override
  _AnalyticsSwitchState createState() => _AnalyticsSwitchState();
}

class _AnalyticsSwitchState extends State<AnalyticsSwitch> {
  bool isSwitchedAnalytics = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
          key: Key('AnalyticsSwitch'),
          value: isSwitchedAnalytics,
          onChanged: (value) {
            setState(() {
              isSwitchedAnalytics = value;
            });
          },
        ),
        Text('Analytics and Support')
      ],
    );
  }
}
