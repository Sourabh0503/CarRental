import 'package:cars_info_app/models/category.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({required this.brandItem,required this.onSelect,super.key});

  final Category brandItem;
  final void Function() onSelect;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelect,
      splashColor: const Color.fromARGB(255, 187, 203, 222),
      borderRadius: BorderRadius.circular(15),
      child: Card(
        elevation: 1.5,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.white, Color.fromARGB(255, 232, 236, 238)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(brandItem.brandName),
              const SizedBox(
                height: 8,
              ),
              brandItem.brandImg,  //brandimg and a image assest widget
            ],
          ),
        ),
      ),
    );
  }
}
