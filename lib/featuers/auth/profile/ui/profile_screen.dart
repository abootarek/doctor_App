import 'package:docapp_pro/core/cache/key_values.dart';
import 'package:docapp_pro/core/cache/shiledperfrinse.dart';
import 'package:docapp_pro/core/helper/extintion.dart';
import 'package:docapp_pro/core/routing/routs.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                  'Name: ${SharedPrefHelper.getData(key: KeyValues.userName)}'),
              accountEmail: Text('Gmail: johndoe@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
              ),
            ),
            Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  autofocus: true,
                ),
                const ListTile(
                  leading: Icon(Icons.file_copy_rounded),
                  title: Text('Files'),
                  autofocus: true,
                ),
                GestureDetector(
                  onTap: () {
                    SharedPrefHelper.removeData(key: KeyValues.token);
                    context.pushNamedAndRemoveUntil(Routes.loginScreen,
                        predicate: (route) => false);
                  },
                  child: ListTile(
                    leading: Icon(Icons.login_rounded),
                    title: Text('Logout'),
                    autofocus: true,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
