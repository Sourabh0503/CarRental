import 'package:cars_info_app/providers/filter_provider.dart';
import 'package:cars_info_app/widgets/filter_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FliterScreen extends ConsumerWidget {
  const FliterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters=ref.watch(filterProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 33, 49),
        foregroundColor: Colors.white,
        title: const Text("Your Filter"),
      ),
      body: ListView(
        children: [
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Fuel",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 1, 47, 80),
                      ),
                ),
                FilterItem(
                  title: "Petrol",
                  currentStatus: activeFilters[Filters.isPetrol]!,
                  updateStaus: (bool status) {
                    ref.read(filterProvider.notifier).setFilter(Filters.isPetrol, status);
                  },
                ),
                FilterItem(
                  title: "Diesel",
                  currentStatus: activeFilters[Filters.isDiesel]!,
                  updateStaus: (bool status) {
                    ref.read(filterProvider.notifier).setFilter(Filters.isDiesel, status);
                  },
                ),
                FilterItem(
                    title: "Electric",
                    currentStatus: activeFilters[Filters.isElectric]!,
                    updateStaus: (bool status) {
                      ref.read(filterProvider.notifier).setFilter(Filters.isElectric, status);
                    }),
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Transmission",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 1, 47, 80),
                      ),
                ),
                FilterItem(
                    title: "Manual",
                    currentStatus: activeFilters[Filters.isManual]!,
                    updateStaus: (bool status) {
                      ref.read(filterProvider.notifier).setFilter(Filters.isManual, status);
                    }),
                FilterItem(
                    title: "Automatic",
                    currentStatus: activeFilters[Filters.isAutomatic]!,
                    updateStaus: (bool status) {
                      ref.read(filterProvider.notifier).setFilter(Filters.isAutomatic, status);
                    }),
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Category",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 1, 47, 80),
                      ),
                ),
                FilterItem(
                    title: "Coupe",
                    currentStatus: activeFilters[Filters.isCoupe]!,
                    updateStaus: (bool status) {
                      ref.read(filterProvider.notifier).setFilter(Filters.isCoupe, status);
                    }),
                FilterItem(
                    title: "HatchBack",
                    currentStatus: activeFilters[Filters.isHatchback]!,
                    updateStaus: (bool status) {
                      ref.read(filterProvider.notifier).setFilter(Filters.isHatchback, status);
                    }),
                FilterItem(
                    title: "Sedan",
                    currentStatus: activeFilters[Filters.isSedan]!,
                    updateStaus: (bool status) {
                      ref.read(filterProvider.notifier).setFilter(Filters.isSedan, status);
                    }),
                FilterItem(
                    title: "SUV",
                    currentStatus: activeFilters[Filters.isSUV]!,
                    updateStaus: (bool status) {
                      ref.read(filterProvider.notifier).setFilter(Filters.isSUV, status);
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
