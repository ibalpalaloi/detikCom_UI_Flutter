import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController tabC = TabController(length: 2, vsync: this);
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
              "Profile",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Column(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage("assets/profileLogo.png"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 130,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff21409A),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text(
                    "Masuk",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Belum Daftar?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Daftar"),
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        TabBar(
          controller: tabC,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(
              text: "Bookmark",
            ),
            Tab(
              text: "Pemberitahuan",
            ),
          ],
        ),
        Expanded(
            child: Container(
          child: TabBarView(
            controller: tabC,
            children: [
              Center(
                child: Text("Bookmart Kosong"),
              ),
              ListView(
                padding: EdgeInsets.only(top: 14, left: 10, right: 10),
                children: [
                  CardPemberitahuan(),
                  CardPemberitahuan(),
                  CardPemberitahuan(),
                  CardPemberitahuan(),
                  CardPemberitahuan(),
                  CardPemberitahuan(),
                  CardPemberitahuan(),
                  CardPemberitahuan(),
                  CardPemberitahuan(),
                  CardPemberitahuan(),
                  CardPemberitahuan(),
                  CardPemberitahuan(),
                ],
              )
            ],
          ),
        ))
      ],
    );
  }
}

class CardPemberitahuan extends StatelessWidget {
  const CardPemberitahuan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                ),
                SizedBox(height: 10),
                Text(
                  "2 Jam yang lalu",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
