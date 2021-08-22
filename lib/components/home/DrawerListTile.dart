import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.icon,
    required this.title,
    this.onTap,
    this.onLongPress,
    this.enabled = true,
    this.selected = false,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final GestureTapCallback? onTap;
  final GestureLongPressCallback? onLongPress;
  final bool enabled;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(this.icon, size: 26),
      title: Text(this.title),
      enabled: this.enabled,
      selected: this.selected,
      onTap: this.onTap,
      onLongPress: this.onLongPress,
    );
  }
}
