import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_app/bottomsheet.dart';
import 'package:profile_app/grid.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://cdn.discordapp.com/attachments/1244279513924374581/1265624751070642186/whoever-designed-changli-thank-you-v0-t4e7ewov4b9d1.png?ex=66a23066&is=66a0dee6&hm=f2006084d64849c920a342fabab93cb8e135170ba449ec1769261a4282fb6471&',
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                  const Text(
                    'Ratchanon ketkaew',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  const Text(
                    'deemgamer123@gmail.com',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text(
              'Home',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Get.toNamed('/'); // เปลี่ยนจาก Get.to(() => MyApp());
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text(
              'About',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Get.toNamed('/about'); // เปลี่ยนจาก Get.to(() => AboutApp());
            },
          ),
          ListTile(
            leading: const Icon(Icons.grid_view),
            title: const Text(
              'GridPage',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Get.to(() =>
                  const GridPage()); // เปลี่ยนจาก Get.to(() => AboutApp());
            },
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text(
              'bottomsheet',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Get.to(() =>
                  const BottomSheetExample()); // เปลี่ยนจาก Get.to(() => AboutApp());
            },
          ),
        ],
      ),
    );
  }
}
