import 'package:flutter/material.dart';

AppBar AppBarWidget() {
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
        icon: const Icon(Icons.favorite_border),
        tooltip: 'Favoriler',
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.settings),
        tooltip: 'Ayarlar',
        onPressed: () {},
      ),
    ],
  );
}