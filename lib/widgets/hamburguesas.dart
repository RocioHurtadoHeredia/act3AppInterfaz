import 'package:ecommerce/models/hamburguesasmodelo.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Productos extends StatelessWidget {
  const Productos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(productoshamburguesa.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(productoshamburguesa[index].imagen),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " ${productoshamburguesa[index].nombre}",
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff)),
                  ),
                  const SizedBox(height: 8),
                  const Text("Hamburguesa",
                      style: TextStyle(color: Color(0xffffffff))),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(
                        Ionicons.star,
                        color: Colors.yellow[700],
                        size: 18,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 4, right: 6),
                        child: Text(
                          "4.5",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffffff)),
                        ),
                      ),
                      const Text(
                        "195 Reviews",
                        style: TextStyle(color: Color(0xffffffff)),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
