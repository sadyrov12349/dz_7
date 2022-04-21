import 'dart:convert';
import 'package:flutter/material.dart';
import 'fetch_file.dart';

class ListArtists extends StatelessWidget {
  const ListArtists({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.pop(context, true);
            }),
      ),
      body: SafeArea(
        child: FutureBuilder<String>(
          future: fetchFileFromAssets().then((value) => value),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return ListView.builder(
                itemCount: json.decode(snapshot.data).length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/about', arguments: {
                          'data': json.decode(snapshot.data)[index],
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              '${json.decode(snapshot.data)[index]['name']}',
                            ),
                          ),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(Icons.navigate_next)),
                        ],
                      ),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
