import 'package:cars_info_app/models/car.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavCarNotifier extends StateNotifier<List<CarModel>> {
  FavCarNotifier() : super([]);

  bool toggleFavStatus(CarModel car) {
    bool isExisiting = state.contains(car);
    if (isExisiting) {
      state = state.where((item) => item.id != car.id).toList();
      return false;
    } else {
      state = [...state, car];
      return true;
    }
  }
  
}

final favCarProvider = StateNotifierProvider<FavCarNotifier, List<CarModel>>(
  (ref) => FavCarNotifier(),
);
