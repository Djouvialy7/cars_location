import 'package:cars_location/screens/boking.dart';
import 'package:cars_location/utils/utils.dart';
import 'package:flutter/material.dart';
import '../widgets/specific_card.dart';

class CarDetail extends StatelessWidget {
  final String title;
  final double price;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;
  final String path;

  CarDetail(
      {required this.title,
      required this.price,
      required this.color,
      required this.gearbox,
      required this.fuel,
      required this.brand,
      required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(Icons.bookmark,
                  size: 30, color: Theme.of(context).accentColor)),
          IconButton(onPressed: null, icon: Icon(Icons.share, size: 30)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(title, style: MainHeading),
            Text(
              brand,
              style: BasicHeading,
            ),
            Hero(tag: title, child: Image.asset(path)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SpecificsCard(
                  name: '12 Mois',
                  price: price * 12,
                  name2: 'Francs Cfa',
                ),
                SpecificsCard(
                  name: '6 Mois',
                  price: price * 6,
                  name2: 'Francs Cfa',
                ),
                SpecificsCard(
                  name: '1 mois',
                  price: price * 1,
                  name2: 'Francs Cfa',
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              'SPECIFICATIONS',
              style: TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SpecificsCard(
                  name: 'Couleur',
                  name2: color,
                  price: 500,
                ),
                SpecificsCard(
                  name: 'Boîte de vitesses',
                  name2: gearbox,
                  price: 650,
                ),
                SpecificsCard(
                  name: 'Carburant',
                  name2: fuel,
                  price: 750,
                )
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CalendarPage()));
              },
              child: Text(
                'Reservez Maintenant',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
