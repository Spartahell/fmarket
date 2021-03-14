import 'package:flutter/material.dart';

class Sepetim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(
          child: Text(
            'Sepetim',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.red[400],
            ),
          ),
        ),
        ListTile(
          title: Text('Çikolatalı Gofret'),
          subtitle: Text('2 adet x 3.50 TL'),
          trailing: Text('7 TL'),
        ),
        ListTile(
          title: Text('Çilek Gofret'),
          subtitle: Text('2 adet x 3.50 TL'),
          trailing: Text('7 TL'),
        ),
        ListTile(
          title: Text('Islak Kek'),
          subtitle: Text('5 adet x 10.00TL'),
          trailing: Text('50 TL'),
        ),
        SizedBox(height:20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Column(
                children: <Widget>[
                  Text(
                  'Toplam Tutar',
                  style:TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[400],
                  ),
                ),
                Text(
                  '64 TL ',
                  style:TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color:Colors.red
            ),
            child: Center(
              child: Text(
                'Alışverişi Tamamla',
                      style:TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
