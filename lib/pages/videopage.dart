import 'dart:convert';

import 'package:flutter/material.dart';
import '../models/listVideo.dart';
import 'package:http/http.dart' as http;

class VideoPage extends StatelessWidget {
  String url = "https://youtube.googleapis.com/youtube/v3/search";
  String API_KEY = "AIzaSyDm9KsYMCueD1DFKFWyZjlyHMM2FLnqSaE";
  String channelID = "UCuMAjEaSMj7q7YLf0xW1MjQ";
  late ListVideo listVideo;

  Future getVideo() async {
    String parameter =
        "?part=snippet&channelId=${channelID}&key=${API_KEY}&maxResults=25&order=date";
    var response = await http.get(Uri.parse(url + parameter));
    var data = json.decode(response.body);
    listVideo = ListVideo.fromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    getVideo();
    return Column(
      children: [
        Container(
          alignment: Alignment.bottomLeft,
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0),
                blurRadius: 6,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Video",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: FutureBuilder(
            future: getVideo(),
            builder: (context, snapshot) {
              return ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: listVideo.items!.length,
                itemBuilder: (context, index) {
                  return CardVideo(
                      "${listVideo.items![index].snippet!.thumbnails!.medium!.url}",
                      "${listVideo.items![index].snippet!.title}");
                },
              );
            },
          ),
        )
      ],
    );
  }
}

class CardVideo extends StatelessWidget {
  CardVideo(@required this.img, @required this.title);

  String img;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 300,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage(img),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
