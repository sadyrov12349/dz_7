import 'package:flutter/services.dart';

Future<String> fetchFileFromAssets() async {
  return rootBundle.loadString('assets/artists.json').then((file) => file);
}
