import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:telegram_clone/utils/color.dart';

class UserMessage extends StatelessWidget {
  const UserMessage({
    Key? key,
    required this.name,
    required this.picture,
    this.lastMessage,
    required this.lastTime,
    this.type = "user",
    this.sending = "İsimsiz Hesap",
    this.seeing = 0,
    this.pinned = false,
    this.mute = false,
    this.badge = "",
    this.onTap,
    this.onLongPress,
  }) : super(key: key);

  final String name;
  final ImageProvider<Object> picture;
  final String? lastMessage;
  final String? sending;
  final String lastTime;
  final String type;
  final int seeing;
  final bool pinned;
  final bool mute;
  final String badge;
  final GestureTapCallback? onTap;
  final GestureLongPressCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text(this.name),
          if (this.mute) SizedBox(width: 5),
          if (this.mute)
            Icon(
              Icons.volume_off_rounded,
              color: Colors.grey.shade400,
              size: 15,
            ),
        ],
      ),
      subtitle: this.type == "user"
          ? Text(this.lastMessage ?? "")
          : Row(
              children: [
                Text(
                  "${this.sending}: ",
                  style: TextStyle(color: PacificBlue),
                ),
                Text(
                  this.lastMessage ?? "",
                ),
              ],
            ),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (this.seeing == 1 || this.seeing == 2)
                Icon(
                  this.seeing == 2
                      ? Icons.done_all_rounded
                      : Icons.done_rounded,
                  color: Colors.green,
                  size: 20,
                ),
              if (this.seeing == 1 || this.seeing == 2) SizedBox(width: 10),
              Text(
                this.lastTime,
                style: TextStyle(color: Colors.grey.shade500),
              ),
            ],
          ),
          SizedBox(
              height: this.pinned && this.badge == ""
                  ? 10
                  : this.badge != ""
                      ? 5
                      : 30),
          if (this.badge != "")
            Badge(
              badgeColor: Colors.grey.shade400,
              position: BadgePosition(bottom: -3, end: 0),
              toAnimate: false,
              badgeContent: Text(
                '45',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          if (this.pinned && this.badge == "")
            Icon(Icons.push_pin_rounded, size: 20, color: Colors.grey.shade500)
        ],
      ),
      leading: SizedBox.fromSize(
        size: Size(50, 50),
        child: CircleAvatar(
          backgroundImage: this.picture,
          backgroundColor: Colors.grey,
        ),
      ),
      onTap: () {},
    );
  }
}
