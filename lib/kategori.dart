import 'package:flutter/material.dart';
import 'package:fmarket/urun_detay.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({Key key, this.kategori}) : super(key: key);
  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<Widget> gosterilecekListe;

  @override
  void initState() {
    super.initState();

    if (widget.kategori == "temel gıda") {
      gosterilecekListe = [
        urunKarti('Zeytin Yağı','23.50 TL','https://cdn.pixabay.com/photo/2015/10/02/15/59/olive-oil-968657_960_720.jpg'),
        urunKarti('Süt','10.50 TL','https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg'),
      ];
    } else if (widget.kategori == "şekerleme") {
      gosterilecekListe = [
      urunKarti('Şeker','1.5 TL','https://cdn.pixabay.com/photo/2017/01/07/20/40/candy-1961536_960_720.jpg'),
      ];
    } else if (widget.kategori == "içecekler") {
      gosterilecekListe = [
        urunKarti('Kola', '20 TL', 'https://cdn.pixabay.com/photo/2014/09/26/19/51/drink-462776_960_720.jpg'),
        urunKarti('su', '1 TL', 'https://cdn.pixabay.com/photo/2015/09/03/18/04/drip-921067_960_720.jpg')
      ];
    } else if (widget.kategori == "temizlik") {
      gosterilecekListe = [
        urunKarti('Deterjan', '17.5 TL', 'https://cdn.pixabay.com/photo/2019/02/05/18/55/cleaning-3977589_960_720.jpg'),
      ];
    }
  }

  Widget urunKarti(String isim, String fiyat, String resimYolu) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>UrunDetay(isim: isim,fiyat:fiyat,resimYolu: resimYolu,)));
      },
          child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4.0,
                spreadRadius: 2.0,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: resimYolu,
                          child: Container(
                width: 120.0,
                height: 80.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(resimYolu), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              isim,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              fiyat,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.red[600],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.0,
      crossAxisSpacing: 12.0,
      childAspectRatio: 1,
      padding: EdgeInsets.all(10.0),
      children: gosterilecekListe,
    );
  }
}
