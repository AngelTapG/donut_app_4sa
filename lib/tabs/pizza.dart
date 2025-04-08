import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {

  //list of donuts
final List donutsOnSale = [
      // [ donutFlavor, donutSort, donutPrice, donutColor, imageName ]
    ["Ice Cream", "Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Dunkin Donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Pollos Hermanos", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Dairy Queen", "95", Colors.brown, "lib/images/chocolate_donut.png"],
  
  ];

  PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Prepa 1: cómo se va a organizar
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Número de columnas
        crossAxisCount: 2,
        //Proporción entre ancho y alto
        childAspectRatio: 1/1.5),
      //Cuántos elementos
      itemCount: 4,
      padding: const EdgeInsets.all(12),
      //Qué elemento se construirá
      itemBuilder: (context, index) {
        return DonutTile (
          donutFlavor: donutsOnSale[index][0],
          donutSort: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
        );
      });
  }
}