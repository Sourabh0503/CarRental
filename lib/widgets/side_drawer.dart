import 'package:cars_info_app/Screens/car_list_screen.dart';
import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key, required this.onSelect});

  final void Function(String screenName) onSelect;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 42, 114, 150),
                  Color.fromARGB(255, 5, 39, 56)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(
                  Icons.speed_rounded,
                  size: 48,
                  color: Color.fromARGB(180, 255, 255, 255),
                ),
                const SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    "Hello User",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: const Color.fromARGB(180, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
              leading: const Icon(
                Icons.directions_car,
                size: 26,
                color: Color.fromARGB(255, 1, 47, 80),
              ),
              title: Text(
                "Cars",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 24,
                      color: const Color.fromARGB(255, 1, 47, 80),
                    ),
              ),
              onTap: () {
                onSelect("Cars");
              },
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
              leading: const Icon(
                Icons.settings_applications_outlined,
                size: 26,
                color: Color.fromARGB(255, 1, 47, 80),
              ),
              title: Text(
                "Fliter",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 24,
                      color: const Color.fromARGB(255, 1, 47, 80),
                    ),
              ),
              onTap: () {
                onSelect("Fliter");
              },
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
              leading: const Icon(
                Icons.logout,
                size: 26,
                color: Color.fromARGB(255, 1, 47, 80),
              ),
              title: Text(
                "Log Out",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 24,
                      color: const Color.fromARGB(255, 1, 47, 80),
                    ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (ctx) =>
                        const CarListScreen(brandName: "logout", carsList: []),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
