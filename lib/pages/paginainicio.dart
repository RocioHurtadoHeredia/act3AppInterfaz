import 'package:ecommerce/widgets/menu.dart';
import 'package:ecommerce/widgets/hamburguesas.dart';
import 'package:ecommerce/widgets/tarjetainicio.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Paginainicio extends StatelessWidget {
  const Paginainicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        backgroundColor: const Color(0xff303030),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Hola, Rocio",
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 19,
                    fontWeight: FontWeight.bold)),
            Text(
              "Qué quieres comer hoy?",
              style: TextStyle(color: Color(0xffffffff), fontSize: 15),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.notifications_outline),
            color: const Color(0xffffffff),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.search_outline),
            color: const Color(0xffffffff),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        children: const [
          Tarjetainicio(),
          SizedBox(height: 20),
          Text(
            "Menú",
            style: TextStyle(color: Color(0xffffffff)),
          ),
          SizedBox(height: 15),
          Menu(),
          SizedBox(height: 25),
          Text(
            "Hamburguesas",
            style: TextStyle(color: Color(0xffffffff)),
          ),
          SizedBox(height: 15),
          Productos(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            activeIcon: Icon(Ionicons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.calendar_outline),
            activeIcon: Icon(Ionicons.calendar),
            label: "Horario",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.chatbubble_ellipses_outline),
            label: "Mensaje",
            activeIcon: Icon(Ionicons.chatbubble_ellipses),
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            activeIcon: Icon(Ionicons.person),
            label: "Perfil",
          ),
        ],
      ),
    );
  }
}
