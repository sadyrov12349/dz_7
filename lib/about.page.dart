import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)?.settings?.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text('${arguments['data']['name']}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text('${arguments['data']['about']}'),
      ),
    );
  }
}
