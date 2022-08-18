import 'package:flutter/material.dart';

class cardBerita extends StatelessWidget {
  cardBerita(
    @required this.img,
    @required this.title,
  );

  String img;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: NetworkImage("${img}"),
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${title}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("detikNews | 10 menit yang lalu"),
                    ],
                  ),
                ),
              )
            ],
          ),
          InkWell(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.transparent,
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
