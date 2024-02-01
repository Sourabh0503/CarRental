import 'package:cars_info_app/Screens/car_list_screen.dart';
import 'package:cars_info_app/data/brands_data.dart';
import 'package:cars_info_app/models/car.dart';
import 'package:cars_info_app/widgets/category_item.dart';
import 'package:flutter/material.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({super.key , required this.carsList});
  final List<CarModel>carsList;

  void _selectBrand(BuildContext context, String brand) {
    final carsAvaliable =
        carsList.where((car) => car.brandName == brand).toList();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => CarListScreen(
          brandName: brand,
          carsList: carsAvaliable,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        for (final brand in availableBrand)
          CategoryItem(
            brandItem: brand,
            onSelect: () {
              _selectBrand(context, brand.brandName);
            },
          )
      ],
    );
  }
}
