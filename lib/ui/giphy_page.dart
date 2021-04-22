import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GiphyPage extends StatelessWidget {
  var giphyData;
  GiphyPage(this.giphyData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(giphyData["title"]),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              Share.share(giphyData["images"]["fixed_height"]["url"]);
            },
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(giphyData["images"]["fixed_height"]["url"]),
      ),
    );
  }
}
