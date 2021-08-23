import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class DrawerUserListTile extends StatelessWidget {
  const DrawerUserListTile({
    Key? key,
    this.picture = "",
    this.icon,
    required this.name,
    this.backgroundColor = Colors.grey,
    this.onTap,
    this.onLongPress,
    this.selected = false,
  }) : super(key: key);

  final String? picture;
  final IconData? icon;
  final String name;
  final Color backgroundColor;
  final GestureTapCallback? onTap;
  final GestureLongPressCallback? onLongPress;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: selected
          ? Badge(
              badgeColor: Colors.green,
              position: BadgePosition(bottom: -3, end: 0),
              toAnimate: false,
              badgeContent: Icon(
                Icons.done_rounded,
                color: Colors.white,
                size: 8,
              ),
              child: SizedBox.fromSize(
                size: Size(35, 35),
                child: CircleAvatar(
                  child: Center(
                    child: Text(
                      this.picture != "" ? "" : this.name.substring(0, 1),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  backgroundImage: NetworkImage(this.picture!),
                  backgroundColor: this.backgroundColor,
                ),
              ),
            )
          : SizedBox.fromSize(
              size: Size(35, 35),
              child: this.icon != null ? Icon(this.icon!) : CircleAvatar(
                child: Center(
                  child: Text(
                    this.picture != "" ? "" : this.name.substring(0, 1),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                backgroundImage: NetworkImage(this.picture!),
                backgroundColor: this.backgroundColor,
              ),
            ),
      title: Text(this.name),
      onTap: this.onTap,
      onLongPress: this.onLongPress,
    );
  }
}
