// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<IconoPersonalizado> iconopersonalizado = [
      IconoPersonalizado(nombre: "Hamburguesa", icono: 'assets/famoussf.png'),
      IconoPersonalizado(nombre: "Papas", icono: 'assets/papas.png'),
      IconoPersonalizado(nombre: "Refresco", icono: 'assets/soda.png'),
      IconoPersonalizado(nombre: "Postres", icono: 'assets/postre.png'),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(iconopersonalizado.length, (index) {
        return Column(
          children: [
            Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer
                    .withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                iconopersonalizado[index].icono,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              iconopersonalizado[index].nombre,
              style: const TextStyle(color: Color(0xffffffff)),
            )
          ],
        );
      }),
    );
  }
}

class IconoPersonalizado {
  final String nombre;
  final String icono;
  IconoPersonalizado({
    required this.nombre,
    required this.icono,
  });
}
