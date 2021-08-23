import 'package:flutter/material.dart';
import 'package:telegram_clone/components/home/UserMessage.dart';
import 'package:telegram_clone/components/home/drawer/index.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showOtherUsers = false;
  int selectedUser = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        brightness: Brightness.dark,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: InkWell(
              customBorder: CircleBorder(),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.search_rounded),
              ),
              onTap: () {},
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserMessage(
              name: "Flutter Developers",
              picture: NetworkImage(
                "https://cdn4.telesco.pe/file/gmCq1iLVdznY9p1Xgve2BuiTY_fVx_QobWK9IGUACKUDflAytDOtzhhshN8h6I0ERAvscRpaI48LkqEwnRUlJY6qrSllFM5UhcLgwzmwEo0OH6mNKrMlN2Sxm04GoIjQ06uV3R7yr3hxCdXanFPTMLK2XYXLuhP6gpBFfc6xmKNBlap3F_SRuy-m0PDWAAgCVdTFDi3ydxpe4PZK-ytiEX-jDAhtbnhxmb1_IzEr0_KOKj2CNx3C2QYwmrzeLaG0c9_YbGzup1fSj99xEQLLJ-RfhcANds_A3O6M31z7a6eatLa46KXNGPextgOySRy0jjlj_Utvb01OeuI1dbC2aA.jpg",
              ),
              type: "group",
              sending: "Your",
              lastTime: "02:45",
              seeing: 2,
              lastMessage: "https://github.com/ofarukbicer/telegram-clone",
            ),
            Divider(height: 0),
            UserMessage(
              name: "Flutter Türkiye 🇹🇷",
              picture: NetworkImage(
                "https://cdn4.telesco.pe/file/b7AZ0Zpaa78uW77TPdktnlOQGpBnTW2ILqi94jywJ8aWe9xRTdCMvpb6BygZni156_S-HuGhDoX6Z-hlAJHaKMHQSSTtK3cKCHwQ2U6az1qcFCxXR5kZprMIbgRSkknNmNAFwQFB_LTCk1VwyJVx6P6zY2cHFaSlIz5wb-LkMsoNigNFuefcnOhS3ore8vBkv-hz9VPtM-4daar9ShN3T0RV9P2IQsOoJmLmjd-Zz-vE0-jy9zt09qYay_1VEIw3f0IiPTD-o6RUTOts3xktU6KJlgWd4K8UhQwyFPqsNQociPkJ0FXRPR_xxiWg6E2iWtRlYyNdm24TCNMraLzg0g.jpg",
              ),
              lastTime: "02:16",
              type: "group",
              sending: "Mesud Karakayalı",
              lastMessage: "gece gece sinirim bozuldu.",
            ),
            Divider(height: 0),
          ],
        ),
      ),
      drawer: DrawerScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit_rounded),
      ),
    );
  }
}
