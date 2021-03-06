import 'package:dartz/dartz.dart';
import 'package:url_launcher/url_launcher.dart';

/// A function which open provided url in a browser if possible
/// If url can not be launched, [launchURL] throw an error
Future<Either<Error, bool>> launchURL(String url) async {
  if (await canLaunch(url)) {
    // ignore: always_specify_types
    return Right(await launch(url));
  } else {
    // ignore: always_specify_types
    return Left(Error());
  }
}
