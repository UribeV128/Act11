import 'package:flutter/material.dart';
import 'package:uribe0418/util/jabon_tile.dart'; // Asegúrate de importar el archivo donde se define CasaTile

class JabonTab extends StatelessWidget {
  List<List<dynamic>> jabonOnSale = [
    ["Jabon facial", "con aceite", Color(0xffd2d2d2), "assets/nuevo1.png"],
    ["Jabon en gel", "200", Color(0xffd2d2d2), "assets/j2.png"],
    ["Jabon antiedad", "300", Color(0xffd2d2d2), "assets/nueva3.png"],
    ["Jabon con aceite", "100", Color(0xffd2d2d2), "assets/nueva4.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: jabonOnSale.length,
        padding: EdgeInsets.all(5.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return JabonTile(
            jabonCategoria: jabonOnSale[index][0],
            jabonPrecio: jabonOnSale[index][1],
            jabonColor: jabonOnSale[index][2],
            imageName: jabonOnSale[index][3],
          );
        });
  }
}
