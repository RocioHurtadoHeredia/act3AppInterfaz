// ignore_for_file: public_member_api_docs, sort_constructors_first
class HamburguesaModelo {
  final String nombre;
  final String posicion;
  final int resenas;
  final int totalresenas;
  final String imagen;
  HamburguesaModelo({
    required this.nombre,
    required this.posicion,
    required this.resenas,
    required this.totalresenas,
    required this.imagen,
  });
}

final List<HamburguesaModelo> productoshamburguesa = [
  HamburguesaModelo(
    nombre: "Famous Star With Cheese",
    posicion: "Hamburguesa",
    resenas: 0,
    totalresenas: 0,
    imagen: "assets/famous.jpg",
  ),
  HamburguesaModelo(
    nombre: "Double Western Bacon",
    posicion: "Hamburguesa",
    resenas: 0,
    totalresenas: 0,
    imagen: "assets/western.jpg",
  ),
  HamburguesaModelo(
    nombre: "Bacon Swiss Big Chicken",
    posicion: "Hamburguesa",
    resenas: 2,
    totalresenas: 0,
    imagen: "assets/chicken.jpg",
  ),
];
