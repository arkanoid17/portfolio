import 'dart:io';
import 'package:portfolio/utils/strings.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

class AppUtils{

  static const urls = {
    AppStrings.linkedin:"https://www.linkedin.com/in/arkaprabha-mahata-4b2aa8129/",
    AppStrings.github:"https://github.com/arkanoid17",
    AppStrings.leetcode:"https://leetcode.com/u/arkanoid17/",
    AppStrings.thriwin:"https://thriwin.io/",
  };

  static navigateToEmail()async{
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'mahata65@gmail.com',
    );

    try{
      if (Platform.isAndroid || Platform.isIOS) {
        await launchUrl(emailUri); // Opens in email app
      }
    }catch(e){
      html.window.open("mailto:mahata65@gmail.com", "_blank"); // Opens in new tab
    }
  }

  static navigateToUrl(String type)async {

    final Uri url = Uri.parse(urls[type]??'');

    try {
      if (Platform.isAndroid || Platform.isIOS) {
        await launchUrl(url); // Opens in email app
      }
    } catch (e) {

      html.window.open(urls[type]??'', "_blank"); // Opens in new tab
    }
  }
}