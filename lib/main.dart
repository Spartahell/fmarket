import 'package:flutter/material.dart';
import 'package:fmarket/sepetim.dart';
import 'package:fmarket/urunler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _aktifIcerikNo = 0;
  List _icerikler;

  @override
  void initState() {
    super.initState();
    _icerikler = [
      Urunler(),
      Sepetim(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red[400]),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'UlakMarket',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
      ),
      body: _icerikler[_aktifIcerikNo],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Sabri Turham'),
              accountEmail: Text('deneme@gmail.com'),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://pbs.twimg.com/profile_images/1320818326428418049/T0J39ASo_400x400.jpg'),
                  fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(50.0)
                ),
                
              ),
              decoration: BoxDecoration(color:Colors.red[400]),
            ),
            ListTile(
              title: Text('Siparişlerim',),onTap: (){},
            ),
            ListTile(
              title: Text('İndirimlerim',),onTap: (){},
            ),
            ListTile(
              title: Text('Ayarlar',),onTap: (){},
            ),
            ListTile(
              title: Text('Çıkış Yap',),onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _aktifIcerikNo,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey[600],
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Ürünler')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text('Sepetim')),
        ],
        onTap: (int tiklananButonPozisyonNo) {
          setState(() {
            _aktifIcerikNo = tiklananButonPozisyonNo;
          });
        },
      ),
    );
  }
}
