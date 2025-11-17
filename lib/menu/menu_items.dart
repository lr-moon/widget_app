import 'package:flutter/material.dart';
class MenuItem {
  final String title;
  final String subitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subitle, 
    required this.link, 
    required this.icon
    });
}
const appMenuItems=<MenuItem>[
  MenuItem(
  title:'Botones',
  subitle:'Varios botones' ,
  link:'/buttons' ,
  icon:Icons.smart_button_outlined,
  ),
  MenuItem(
  title:'Tarjetas',
  subitle:'Un contenedor estilizado' ,
  link:'/cards' ,
  icon:Icons.credit_card,
  ),
];
