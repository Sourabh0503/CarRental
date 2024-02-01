import 'package:cars_info_app/models/car.dart';
import 'package:cars_info_app/providers/fav_car_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CarScreen extends ConsumerWidget {
  const CarScreen({super.key, required this.car});
  final CarModel car;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favList=ref.watch(favCarProvider);
    final isFav=favList.contains(car);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 167, 182, 193),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 33, 49),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              bool wasAdded =
                  ref.read(favCarProvider.notifier).toggleFavStatus(car);
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: const Duration(seconds: 1),
                  content: Text(
                      wasAdded ? "Added To Favorites!!" : "No Longer Favorite"),
                ),
              );
            },
            icon: Icon(isFav
                ? Icons.star
                : Icons.star_border),
          ),
        ],
        title: Text(
          car.title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              car.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 14),
            Text(
              "Specifications",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: const Color.fromARGB(255, 4, 55, 103),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12,
            ),
            for (final specs in car.details)
              Text(
                specs,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
              ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "Description",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: const Color.fromARGB(255, 4, 55, 103),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12,
            ),
            for (final detail in car.description)
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                child: Text(
                  detail,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
                ),
              ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
