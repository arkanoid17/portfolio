import 'dart:io';

import 'package:flutter/material.dart';
import 'package:portfolio/utils/dimensions.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

class AppUtils{
  static navigateToUrl(String link)async {

    final Uri url = Uri.parse(link);

    try {
      if (Platform.isAndroid || Platform.isIOS) {
        await launchUrl(url); // Opens in email app
      }
    } catch (e) {
      html.window.open(link, "_blank");
    }
  }

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

  static void showPopup(BuildContext context,Widget widget,bool isDismissible){
    showDialog(
      context: context,
      barrierDismissible: isDismissible, // Dismiss when tapped outside
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.zero, // Ensures it takes full screen
          child: widget,
        );
      },
    );
  }

  static  String getDevice(BoxConstraints constraints) => constraints.maxWidth<=AppDimensions.mobile?"mobile": constraints.maxWidth<=AppDimensions.tablet?"tablet":"desktop";
}