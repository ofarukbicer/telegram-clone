import 'package:flutter/material.dart';
import 'package:telegram_clone/components/home/DrawerListTile.dart';
import 'package:telegram_clone/components/home/DrawerUserListTile.dart';

class DrawerScreen extends StatefulWidget {
  DrawerScreen({Key? key}) : super(key: key);

  @override
  DrawerScreenState createState() => DrawerScreenState();
}

class DrawerScreenState extends State<DrawerScreen> {
  bool showOtherUsers = false;
  int selectedUser = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("ofarukbicer"),
            accountEmail: Text("+90 (555) 555 55 55"),
            onDetailsPressed: () {
              setState(() {
                showOtherUsers = showOtherUsers ? false : true;
              });
            },
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/75714882"),
              backgroundColor: Colors.grey.shade400,
            ),
            currentAccountPictureSize: Size(60, 60),
            otherAccountsPictures: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.dark_mode_rounded,
                  /* Icons.light_mode_rounded */
                  color: Colors.white,
                ),
              )
            ],
          ),
          if (showOtherUsers)
            DrawerUserListTile(
              name: "ofarukbicer",
              picture: "https://avatars.githubusercontent.com/u/75714882",
              selected: selectedUser == 0 ? true : false,
              onTap: () {
                setState(() {
                  selectedUser = 0;
                });
              },
            ),
          if (showOtherUsers)
            DrawerUserListTile(
              name: "ixHayaBusa",
              picture:
                  "https://cdn4.telesco.pe/file/t8nZz8P0D2Nlll6eOhXxjk-08QjTfo8pAMXY1lIoYGJOMlDQvgGMTawbMzwZdm0i27bmnBGT_V4XdSWibnuqIr51OuZ8E6URHwZYkebDvjtGQiNqaboh2PhDRs-7ye3reAup0IG4Qai3pAblX-ORXdYH1o40m5VWouIrLsO2f6fh5Of5SpyBz5Vozfa8IjODVOkQNW7wzV4j10zU4qnUxGaJYJDnPi2zMaPIXQn3HYreGTqw5ipaNPa3mTjQD1SA3BT2_erxzUu2M7wDDoutzXcMwuL9Gn13216EDPwkYcQkwMZJPMLZ0nnk-UyMp_TA1pTYdNk0TXzMAarlE-ZLYQ.jpg",
              selected: selectedUser == 1 ? true : false,
              onTap: () {
                setState(() {
                  selectedUser = 1;
                });
              },
            ),
          if (showOtherUsers)
            DrawerUserListTile(
              name: "keyifleroslun",
              picture:
                  "https://cdn4.telesco.pe/file/HfLZ5RAyu_dtTMy42VehPRIWFTkeh7dJdp0N_FdL7WXpxL0125T8Lyby5GUygzS548Z6HZuDqtMUTXK6U64Nxcw7yEVj-b-CGyF0zP1NhjXuwjCRk2zSA4D0s0ZBsame8hfW08Jw8O78Z2Rrzep1Wwvtqq58BX67gDNWywfbHFFEMlI846nA8Ypf1jh54Xv45TFtCOgSNdcOo2RZR_5nnX1KlmsGGNFUFboKn20kAbOnhx1wdr0TcV8rc3L-IgwA7FPLCEPpBgG-R-sRK9dcwOwvakA3sN9Gw4XMctGKbfCBkHx2gPlY8_LEfwskdoCZT5qBe6vYiKGXN5rajgj_TA.jpg",
              selected: selectedUser == 2 ? true : false,
              onTap: () {
                setState(() {
                  selectedUser = 2;
                });
              },
            ),
          if (showOtherUsers) Divider(),
          DrawerListTile(
            title: "New Group",
            icon: Icons.people_outline_rounded,
            onTap: () {},
          ),
          DrawerListTile(
            title: "Contacts",
            icon: Icons.person_outline_rounded,
            onTap: () {},
          ),
          DrawerListTile(
            title: "Calls",
            icon: Icons.phone_outlined,
            onTap: () {},
          ),
          DrawerListTile(
            title: "Saved Messages",
            icon: Icons.bookmark_border_rounded,
            onTap: () {},
          ),
          DrawerListTile(
            title: "Settings",
            icon: Icons.settings_outlined,
            onTap: () {},
          ),
          Divider(),
          DrawerListTile(
            title: "Invite Friends",
            icon: Icons.person_add_alt_outlined,
            onTap: () {},
          ),
          DrawerListTile(
            title: "Telegram Features",
            icon: Icons.info_outline_rounded,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
