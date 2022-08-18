import 'package:flutter/material.dart';

class KategoriPage extends StatelessWidget {
  const KategoriPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              "Kategori",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
              right: 10,
            ),
            children: [
              Text(
                "Kategori Berita",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(top: 0),
                height: 300,
                width: double.infinity,
                child: GridView(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(top: 0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  children: [
                    Kategori(
                        img: "assets/kategori_logo/detikNews.png",
                        title: "detikNews"),
                    Kategori(
                        img: "assets/kategori_logo/detikfinance.png",
                        title: "detikFinance"),
                    Kategori(
                        img: "assets/kategori_logo/detikhot.png",
                        title: "Detik Hot"),
                    Kategori(
                        img: "assets/kategori_logo/detikNet.png",
                        title: "detikNet"),
                    Kategori(
                        img: "assets/kategori_logo/detikSport.png",
                        title: "detikSport"),
                    Kategori(
                        img: "assets/kategori_logo/sepakbola.png",
                        title: "Sepakbola"),
                    Kategori(
                        img: "assets/kategori_logo/detikOto.png",
                        title: "detikOto"),
                    Kategori(
                        img: "assets/kategori_logo/detikFood.png",
                        title: "detikFood"),
                    Kategori(
                        img: "assets/kategori_logo/detikFoto.png",
                        title: "detikNews"),
                    Kategori(
                        img: "assets/kategori_logo/detikNews.png",
                        title: "detikNews"),
                    Kategori(
                        img: "assets/kategori_logo/detikTravel.png",
                        title: "detikTravel"),
                    Kategori(
                        img: "assets/kategori_logo/detikHealth.png",
                        title: "detikHealth"),
                  ],
                ),
              ),
              Text(
                "Layanan",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(top: 0),
                height: 300,
                width: double.infinity,
                child: GridView(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(top: 0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  children: [
                    Kategori(
                        img: "assets/kategori_logo/transStudio.png",
                        title: "detikNews"),
                    Kategori(
                        img: "assets/kategori_logo/transShow.png",
                        title: "detikFinance"),
                    Kategori(
                        img: "assets/kategori_logo/detikfinance.png",
                        title: "Detik Hot"),
                    Kategori(
                        img: "assets/kategori_logo/TvInternet.png",
                        title: "detikNet"),
                    Kategori(
                        img: "assets/kategori_logo/sepakbola.png",
                        title: "sepakbola"),
                    Kategori(
                        img: "assets/kategori_logo/detikEvent.png",
                        title: "Event"),
                    Kategori(
                        img: "assets/kategori_logo/detikOto.png",
                        title: "detikOto"),
                    Kategori(
                        img: "assets/kategori_logo/adsMart.png",
                        title: "adsMart"),
                    Kategori(
                        img: "assets/kategori_logo/detikFoto.png",
                        title: "detikFoto"),
                    Kategori(
                        img: "assets/kategori_logo/liveTV.png",
                        title: "detik TV"),
                    Kategori(
                        img: "assets/kategori_logo/detikTravel.png",
                        title: "detikTravel"),
                    Kategori(
                        img: "assets/kategori_logo/lainnya.png",
                        title: "Lainnya"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Kategori extends StatelessWidget {
  Kategori({
    required this.img,
    required this.title,
  });
  String img;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(),
      child: Column(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(image: AssetImage(img))),
          ),
          SizedBox(
            height: 7,
          ),
          Text(title)
        ],
      ),
    );
  }
}
