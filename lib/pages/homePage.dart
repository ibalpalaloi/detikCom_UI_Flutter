import 'package:flutter/material.dart';
import '../widgets/cardBerita.dart';

class HomePage extends StatelessWidget {
  final List homeKategori = [
    "Terbaru",
    "viral",
    "Berita Utama",
    "Most Popular",
    "Lifestyle",
    "Most Commented"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10),
          height: 150,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0),
              blurRadius: 6,
            )
          ]),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/detikcom.png",
                    width: 100,
                  ),
                  Icon(Icons.search),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: homeKategori.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      "${homeKategori[index]}",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  );
                },
              ))
            ],
          ),
        ),
        Expanded(
            child: ListView(
          padding: EdgeInsets.all(10),
          scrollDirection: Axis.vertical,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: 230,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://picsum.photos/seed/picsum/200/300",
                    ),
                    fit: BoxFit.cover,
                  )),
              child: Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff21409A),
                      Color(0xff007cbd),
                    ]),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "detikNews | Selasa 16 Agustus 2022 20.02 WIB",
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            cardBerita(
              'https://picsum.photos/id/870/200/300',
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
            ),
            cardBerita(
              'https://picsum.photos/id/880/200/300',
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
            ),
            cardBerita(
              'https://picsum.photos/id/871/200/300',
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
            ),
            cardBerita(
              'https://picsum.photos/id/872/200/300',
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
            ),
            cardBerita(
              'https://picsum.photos/id/873/200/300',
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
            ),
            cardBerita(
              'hhttps://picsum.photos/id/860/200/300',
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
            ),
            cardBerita(
              'https://picsum.photos/id/878/200/300',
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
            ),
            cardBerita(
              'https://picsum.photos/id/877/200/300',
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
            ),
            cardBerita(
              'https://picsum.photos/id/879/200/300',
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
            ),
            cardBerita(
              'https://picsum.photos/id/829/200/300',
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
            ),
            cardBerita(
              'https://picsum.photos/id/839/200/300',
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
            ),
            cardBerita(
              'https://picsum.photos/id/849/200/300',
              'Lorem Ipsum is simply dummy text of the printing and typesetting',
            ),
          ],
        ))
      ],
    );
  }
}
