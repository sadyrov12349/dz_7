import 'package:flutter/material.dart';

class AppDriwer extends StatelessWidget {
  const AppDriwer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // const DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //   ),
            //   child: Center(child: Text('Menu')),
            // ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Artists'),
              onTap: () {
                Navigator.pushNamed(context, '/listArtists');
              },
            ),
          ],
        ),
      ),
    );
  }
}
