import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  //dynamic porque será de tipo color
  final dynamic donutColor;  
  final String imageName;

  const DonutTile(
    {super.key,
    required this.donutFlavor,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  donutFlavor,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: donutColor[800],
                  ),
                ),
              ),
              //Icons
      ],),
      ),
    );
  }
}