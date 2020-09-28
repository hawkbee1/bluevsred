import 'package:url_launcher/url_launcher.dart';

//TODO: Should I write some tests for this ?
/// A function which open provided url in a browser if possible
/// If url can not be launched, launchURL throw an error
launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    //TODO: Needs error handling system
    //TODO: Add this throw to error handling
    throw 'Could not launch $url';
  }
}
