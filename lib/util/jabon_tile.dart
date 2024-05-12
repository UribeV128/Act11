import 'package:flutter/material.dart';

class JabonTile extends StatelessWidget {
  final String jabonCategoria;
  final String jabonPrecio;
  final jabonColor;
  final String imageName;

  final double borderRadius = 12;

  const JabonTile(
      {Key? key,
      required this.jabonCategoria,
      required this.jabonPrecio,
      required this.jabonColor,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
              color: jabonColor,
              borderRadius: BorderRadius.circular(borderRadius)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: jabonColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(borderRadius),
                          topRight: Radius.circular(borderRadius)),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Text('\$$jabonPrecio',
                        style: TextStyle(
                            color: jabonColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 0),
                child: Image.asset(imageName),
              ),
              Text(jabonCategoria,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )),
              const SizedBox(height: 1),
              Text(
                'Jabon',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
