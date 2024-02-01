import 'package:cars_info_app/Screens/car_screen.dart';
import 'package:cars_info_app/Screens/tab_screen.dart';
import 'package:cars_info_app/models/car.dart';
import 'package:cars_info_app/widgets/car_card.dart';
import 'package:flutter/material.dart';

class CarListScreen extends StatelessWidget {
  const CarListScreen({
    super.key,
    required this.brandName,
    required this.carsList,
  });
  final String brandName;
  final List<CarModel> carsList;

  void _selectCar(BuildContext context, CarModel car) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (ctx) => CarScreen(
                car: car,
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = carsList.isEmpty
        ? Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("Uhh Ohh.... No Vehical",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                    )),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  brandName == "Fav"?"Try adding some":"Try using different filter",
                ),
                if (brandName == "logout")
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => const TabsScreen(),
                          ));
                      },
                      child: const Text("Log In"),),
              ],
            ),
          )
        : ListView.builder(
            itemCount: carsList.length,
            itemBuilder: (context, index) {
              return CarCard(
                  carItem: carsList[index],
                  onCarSelect: () {
                    _selectCar(context, carsList[index]);
                  });
            },
          );
    return brandName == "Fav"
        ? content
        : Scaffold(
            backgroundColor: const Color.fromARGB(255, 233, 241, 246),
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 1, 33, 49),
              foregroundColor: Colors.white,
              title: Text(
                brandName,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            body: content,
          );
  }
}
