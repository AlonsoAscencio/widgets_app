import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Riverpod Counter',
      subtitle: 'introduccion a riverpod',
      link: '/counter',
      icon: Icons.add
      ),
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined
      ),
  MenuItem(
      title: 'Tarjetas',
      subtitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card
      ),
  MenuItem(
      title: 'progress Indicators',
      subtitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded
      ),
  MenuItem(
      title: 'Snackbars y dialogs',
      subtitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline
      ),
  MenuItem(
      title: 'Animated container',
      subtitle: 'Stateful widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded
      ),
  MenuItem(
      title: 'UI Controls + Tiles',
      subtitle: 'Una serie de controles de Flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined
      ),
  MenuItem(
      title: 'Introduccion a la aplicacion',
      subtitle: 'Pequeno tutorial a la aplicacion',
      link: '/tutorial',
      icon: Icons.accessible_rounded
      ),
  MenuItem(
      title: 'Ifinite Scroll y Pull',
      subtitle: 'Listas infinitas y pull to refresh',
      link: '/infinite',
      icon: Icons.list_alt_rounded
      ),
  MenuItem(
      title: 'Cambiar tema',
      subtitle: 'cambiar tema de la aplicacion',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined
      ),
];
