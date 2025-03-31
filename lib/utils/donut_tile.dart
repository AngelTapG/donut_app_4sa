import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final String donutSort;
  //dynamic porque será de tipo color
  final dynamic donutColor;  
  final String imageName;

  const DonutTile(
    {super.key,
    required this.donutFlavor,
    required this.donutSort,
    required this.donutPrice,
    required this.donutColor,
    required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
       // color: donutColor[50],
        decoration: BoxDecoration(
          color: donutColor[50],
          //Esquinas redondeadas
          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(24),
          topRight: Radius.circular(24)
          ),
        ),
      child: Column(children: [
           Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: donutColor[100],
                  borderRadius: BorderRadius.circular(24),

                ),
                padding: const EdgeInsets.symmetric(vertical:8,
                horizontal: 18),
                child:Text(
                  '\$$donutPrice',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: donutColor[800]
                  )
                ),
              ),

            ],
            ),
            //Donut price
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24, vertical: 0
                ),
                child: Image.asset(imageName),
              ),
              //Donut flavor text
              Text(donutFlavor,
              style: const TextStyle(fontWeight: FontWeight.bold,
              fontSize:24),),
              //Darle un espacio
              const SizedBox(height: 70),
              Text('Dunkins\'s', style: TextStyle(color: Colors.grey[600])),
              //Icons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:16.0, vertical:8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Icon(Icons.favorite_border, color: Colors.pink[400],),
                Icon(Icons.add, color: Colors.grey[800]),
                //Text([Add], style: TextStyle(decoration: TextDecoration.und)
                ],),
              )
      ],),
      ),
    );
  }
}