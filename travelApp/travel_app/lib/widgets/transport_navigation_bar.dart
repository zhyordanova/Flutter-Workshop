import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransportNavigationBar extends StatefulWidget {
  const TransportNavigationBar({super.key});

  @override
  State<TransportNavigationBar> createState() => _TransportNavigationBarState();
}

class _TransportNavigationBarState extends State<TransportNavigationBar> {
  int _selectedIndex = 0;

  final List<IconData> _icons = <IconData>[
    FontAwesomeIcons.plane,
    FontAwesomeIcons.car,
    FontAwesomeIcons.ship,
    FontAwesomeIcons.motorcycle,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).colorScheme.secondary
              : const Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          _icons[index],
          size: 25,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : const Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: _icons
          .asMap()
          .entries
          .map(
            (MapEntry map) => _buildIcon(map.key),
          )
          .toList(),
    );
  }
}
