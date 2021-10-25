import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final Icon menuIcon;
  final String titulo;
  final void Function() onTap;

  const Menu(this.menuIcon, this.titulo, this.onTap);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: Card(
        shape: Border(
            //right: BorderSide(color: Colors.red[900], width: 10),
            left: BorderSide(color: Colors.red[900], width: 10)),
        child: Container(
          height: 90,
          color: Color.fromRGBO(46, 130, 46, 0.8),
          alignment: Alignment.center,
          child: ListTile(
            leading: menuIcon,
            onTap: onTap,
            title: Text(
              titulo,
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontFamily: 'candy',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
