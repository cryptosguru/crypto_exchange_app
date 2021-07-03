import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

launchUrl(String url) async {
  try {
    if (await canLaunch(url)) {
      await launch(url);
    }
  } on PlatformException catch (e) {
    print("Failed to launch URL with $e");
  }
}

launchUniversal(String url) async {
  try {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
          forceSafariVC: true,
        );
      }
    }
  } on PlatformException catch (e) {
    print("Failed to launch URL with $e");
  }
}
