import 'package:cars_info_app/models/car.dart';
import 'package:cars_info_app/widgets/car_traits.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

final capacity = {
  Capacity.twoSeater: 2,
  Capacity.fourSeater: 4,
  Capacity.fiveSeater: 5,
  Capacity.sixSeater: 6,
  Capacity.sevenSeater: 7,
};

class CarCard extends StatelessWidget {
  const CarCard({required this.carItem,required this.onCarSelect, super.key});

  final CarModel carItem;
  final void Function() onCarSelect;

  String get carType {
    return carItem.type.name[0].toUpperCase() + carItem.type.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: onCarSelect,
        splashColor: const Color.fromARGB(255, 187, 203, 222),
        borderRadius: BorderRadius.circular(20),
        child: Stack(children: [
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(carItem.imageUrl),
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black54,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                children: [
                  Text(
                    carItem.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CarTrait(icon: Icons.currency_rupee, label: "xyz per hour",),
                      CarTrait(
                          icon: Icons.chair,
                          label: capacity[carItem.capacity].toString()),
                      CarTrait(icon: Icons.directions_car, label: carType,),
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
