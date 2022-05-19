import 'package:flutter/material.dart';
import 'package:motorotam/screens/main_page.dart';


class AppBarWidgets extends StatelessWidget implements PreferredSizeWidget  {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(29, 31, 32, 1),
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      title: const Text("MotoRotam"),
      actions: [
        IconButton(
            icon: const Icon(Icons.home_filled),
            tooltip: 'Favoriler',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainPage()),
              );
            }
        ),
        IconButton(
          icon: const Icon(Icons.settings),
          tooltip: 'Ayarlar',
          onPressed: () {},
        ),
      ],
    );
  }

}