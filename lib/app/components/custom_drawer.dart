import 'package:flutter/material.dart';
import 'package:notepad/constants.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              tileColor: kPinkColor,
              title: Text('Marcelo'),
              subtitle: Text('email@email.com'),
            ),
            // Divider(),
            DrawerItem(color: Colors.pink[400], icon: Icons.home, title: 'Início',),
            DrawerItem(color: Colors.pink, icon: Icons.notifications, title: 'Lembretes',),
            DrawerItem(color: Colors.pink[400], icon: Icons.check, title: 'Concluídos',),
            DrawerItem(color: Colors.pink, icon: Icons.favorite, title: 'Favoritos',),
            DrawerItem(color: Colors.pink[400], icon: Icons.bookmark, title: 'Salvos',),
            
          
          ],
        ),
      );
  }
}


class DrawerItem extends StatelessWidget {
  final Color? color;
  final String title;
  final IconData icon;

  const DrawerItem({
    Key? key,
    required this.color,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: color,
      trailing: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle().copyWith(color: Colors.white),
      ),
      onTap: () {},
    );
  }
}
