import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:homepage_flutter/widgets/circle_button.dart';
import 'package:homepage_flutter/widgets/search_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTabIndex = 0;

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _listPage = <Widget>[
      const Text('Home'),
      const Text('Maps'),
      const Text('Cctv'),
      const Text('Profile'),
    ];

    final _bottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.maps_ugc),
        label: 'Maps',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.nest_cam_wired_stand),
        label: 'Cctv',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.account_circle),
        label: 'Profile',
      ),
    ];
    final _bottomNavBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      unselectedItemColor: Colors.black,
      selectedItemColor: Color(0xff147B01),
      onTap: _onNavBarTapped,
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 120,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Color(0xff147B01)),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 20, bottom: 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text(
                    'Selamat Datang Lydia Yusanti!',
                    style:
                        TextStyle(fontFamily: 'Poppins', color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  SizedBox(height: 34, width: 400, child: searchTextField()),
                  Padding(padding: EdgeInsets.all(10)),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        '/icons/Group.png',
                        height: 40,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              itemKategori(
                title: 'Maps',
                icon: 'assets/icons/addmaps.png',
              ),
              Padding(
                  padding: EdgeInsets.only(
                left: 50,
                right: 50,
              )),
              itemKategori(
                title: 'Cctv',
                icon: '/icons/cctv.png',
              ),
              Padding(padding: EdgeInsets.only(left: 50, right: 50)),
              itemKategori(
                title: 'Berita',
                icon: '/icons/news.png',
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lokasi Terdekat',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xff147B01)),
                ),
                Text(
                  'Lihat Semua',
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xff147B01)),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              itemMenu(
                iconn: '/icons/cctvg.png',
                titlee: 'Mataram',
                titlee1: '2 KM ke CCTV di jl.',
                titlee2: 'Majapahit - pertigaan',
              ),
              itemMenu(
                iconn: '/icons/cctvg.png',
                titlee: 'Ampenan',
                titlee1: '2 KM ke CCTV di jl.',
                titlee2: 'Majapahit - pertigaan',
              ),
              itemMenu(
                iconn: '/icons/cctvg.png',
                titlee: 'Rembiga',
                titlee1: '2 KM ke CCTV di jl.',
                titlee2: 'Majapahit - pertigaan',
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '-------------------------------------------',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff147B01)),
                ),
                Text(
                  'Traffic Update',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff147B01)),
                ),
                Text(
                  '-------------------------------------------',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff147B01)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                child: Image.asset('/images/Car.png'),
              ),
              Text(
                'Selengkapnya',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff147B01)),
                textAlign: TextAlign.center,
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('/images/Ellipsew.png'),
              Padding(padding: EdgeInsets.only(left: 5, right: 5)),
              Image.asset('/images/Ellipsew.png'),
              Padding(padding: EdgeInsets.only(left: 5, right: 5)),
              Image.asset('/images/Ellipsew.png'),
              Padding(padding: EdgeInsets.only(left: 5, right: 5)),
              Image.asset('/images/Ellipseg.png'),
              Padding(padding: EdgeInsets.only(left: 5, right: 5)),
              Image.asset('/images/Ellipsew.png'),
              Padding(padding: EdgeInsets.only(left: 5, right: 5)),
              Image.asset('/images/Ellipsew.png'),
              Padding(padding: EdgeInsets.only(left: 5, right: 5)),
              Image.asset('/images/Ellipsew.png'),
              Padding(padding: EdgeInsets.only(left: 5, right: 5)),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Paling Sering Dicari',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xff147B01)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              itemMenu(
                iconn: '/icons/cctvg.png',
                titlee: 'Mataram',
                titlee1: '2 KM ke CCTV di jl.',
                titlee2: 'Majapahit - pertigaan',
              ),
              itemMenu(
                iconn: '/icons/cctvg.png',
                titlee: 'Ampenan',
                titlee1: '2 KM ke CCTV di jl.',
                titlee2: 'Majapahit - pertigaan',
              ),
              itemMenu(
                iconn: '/icons/cctvg.png',
                titlee: 'Rembiga',
                titlee1: '2 KM ke CCTV di jl.',
                titlee2: 'Majapahit - pertigaan',
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}

class itemMenu extends StatelessWidget {
  const itemMenu({
    Key? key,
    required this.titlee,
    required this.titlee1,
    required this.titlee2,
    required this.iconn,
  }) : super(key: key);

  final String titlee;
  final String titlee1;
  final String titlee2;
  final String iconn;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 60, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              height: 42,
              width: 42,
              child: Image.asset(
                iconn,
                color: Color(0xff147B01),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              titlee,
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff7CB472),
                fontFamily: 'Petrona',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              titlee1,
              style: TextStyle(
                fontSize: 10,
                color: Colors.black,
                fontFamily: 'Petrona',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              titlee2,
              style: TextStyle(
                fontSize: 10,
                color: Colors.black,
                fontFamily: 'Petrona',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class itemKategori extends StatelessWidget {
  itemKategori({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            height: 42,
            width: 42,
            child: Image.asset(icon),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
