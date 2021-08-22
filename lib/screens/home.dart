import 'package:flutter/material.dart';
import 'package:telegram_clone/components/home/UserMessage.dart';
import 'package:telegram_clone/components/home/index.dart';

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
              name: "ixHayaBusa",
              picture: NetworkImage(
                "https://cdn4.telesco.pe/file/t8nZz8P0D2Nlll6eOhXxjk-08QjTfo8pAMXY1lIoYGJOMlDQvgGMTawbMzwZdm0i27bmnBGT_V4XdSWibnuqIr51OuZ8E6URHwZYkebDvjtGQiNqaboh2PhDRs-7ye3reAup0IG4Qai3pAblX-ORXdYH1o40m5VWouIrLsO2f6fh5Of5SpyBz5Vozfa8IjODVOkQNW7wzV4j10zU4qnUxGaJYJDnPi2zMaPIXQn3HYreGTqw5ipaNPa3mTjQD1SA3BT2_erxzUu2M7wDDoutzXcMwuL9Gn13216EDPwkYcQkwMZJPMLZ0nnk-UyMp_TA1pTYdNk0TXzMAarlE-ZLYQ.jpg",
              ),
              lastTime: "21:46",
              seeing: 2,
              lastMessage: "tamamdır abi :)",
            ),
            Divider(height: 0),
            UserMessage(
              name: "Kekik | Kahve",
              picture: NetworkImage(
                "https://cdn4.telesco.pe/file/te-NQjoX0Yuc8BZkeyIAVYwcscsx3nFXKOvEgIZPl3CJYHUgXs405IkmlK-coWwmM9PjFGCsQb6BMfF9BF2cQZ1pCq2VWJSI8WEPKvgIMyf1Ve3VFZxiehv9Wq0yzjAYfiZCD8tnY2XQrA0sFpdw6cotFNv4A1ZR3VenRbNiccUW7n8ouFHCeTehsQMyDx6J54onmxzVuKiymaX-OqG2d9-bgxtWEIY1PYOJiEi1DIGdDFlIQJh51rWK34ZIfp4C5bsDYQmpXMCchr2Aa4XIqirB4a_kg68EbFc71AGVno1bfF2E9XR0fixzCWc_07J6n5ELsVOz-bnG56ibwdeI9g.jpg",
              ),
              lastTime: "21:49",
              mute: true,
              type: "group",
              sending: "Sen",
              lastMessage: "bot emeği ile topluyo",
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
