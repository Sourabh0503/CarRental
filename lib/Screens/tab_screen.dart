import 'package:cars_info_app/Screens/brand_screen.dart';
import 'package:cars_info_app/Screens/car_list_screen.dart';
import 'package:cars_info_app/Screens/fliters_screen.dart';
import 'package:cars_info_app/providers/fav_car_provider.dart';
import 'package:cars_info_app/widgets/side_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cars_info_app/providers/filter_provider.dart';

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void onMenuPageSelect(String pageName) async {
    Navigator.of(context).pop();
    if (pageName == "Fliter") {
      await Navigator.of(context).push<Map<Filters, bool>>(
        MaterialPageRoute(
          builder: (ctx) => const FliterScreen(),
        ),
      );
    }else{
      setState(() {
        _selectedPageIndex=0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var avaliableCars = ref.watch(filteredCarProvider);

    Widget activePage = BrandScreen(
      carsList: avaliableCars,
    );
    var activePageTitle = 'Cars Information';
    if (_selectedPageIndex == 1) {
      final favCars=ref.watch(favCarProvider);
      activePage = CarListScreen(
        brandName: "Fav",
        carsList: favCars,
      );
      activePageTitle = 'Your Favorites';
    }
    return Scaffold(
      drawer: SideDrawer(
        onSelect: onMenuPageSelect,
      ),
      appBar: AppBar(
        elevation: 3,
        backgroundColor: const Color.fromARGB(255, 1, 33, 49),
        foregroundColor: Colors.white,
        title: Text(
          activePageTitle,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        selectedItemColor: const Color.fromARGB(255, 2, 74, 110),
        backgroundColor: const Color.fromARGB(255, 212, 224, 229),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car_sharp),
            label: 'Comapnies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}