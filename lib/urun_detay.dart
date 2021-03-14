import 'package:flutter/material.dart';

class UrunDetay extends StatelessWidget {
  final String isim ;
  final String fiyat;
  final String resimYolu;

  const UrunDetay({Key key, this.isim, this.fiyat, this.resimYolu}) : super(key: key);


  @override


  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: resimYolu,
                              child: Image.network(
                    resimYolu),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.red[400],
                  size: 40.0,
                ),
                onPressed: (){
                  Navigator.pop(context);
                },
              )
            ],
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 12.0,),
              Text(isim,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 4.0,),
          Text(fiyat,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.red[400]
          ),),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15.0),
            child: Text('Bu Bölümde Ürün Açıklaması olucak bize ürün hakkında bilgiler vericek bu ürün harika',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey
            ),),
          ),
          SizedBox(height: 15.0,),
          Container(
            width: MediaQuery.of(context).size.width - 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              color:Colors.red[400],
              borderRadius: BorderRadius.circular(12.0),
            ),
            child:Center(
              child: Text('Sepete Ekle',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
            ), 
          )
            ],
          )
        ],
      ),
    );
  }
}
