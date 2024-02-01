import "package:cars_info_app/data/cars_data.dart";
import "package:cars_info_app/models/car.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

enum Filters {
  isPetrol,
  isDiesel,
  isElectric,
  isAutomatic,
  isManual,
  isCoupe,
  isSedan,
  isSUV,
  isHatchback,
}

class FilterProviderNotifier extends StateNotifier<Map<Filters, bool>> {
  FilterProviderNotifier()
      : super({
          Filters.isPetrol: false,
          Filters.isDiesel: false,
          Filters.isElectric: false,
          Filters.isAutomatic: false,
          Filters.isManual: false,
          Filters.isCoupe: false,
          Filters.isSedan: false,
          Filters.isSUV: false,
          Filters.isHatchback: false,
        });

  void setFilters(Map<Filters, bool> filters) {
    state=filters;
  }

  void setFilter(Filters filter, bool val) {
    state = {
      ...state,
      filter: val,
    };
  }
}

final filterProvider =
    StateNotifierProvider<FilterProviderNotifier, Map<Filters, bool>>(
        (ref) => FilterProviderNotifier());




final filteredCarProvider = Provider((ref){
  final currFilter= ref.watch(filterProvider);
  List<CarModel> avaliableCars= carsList.where((car) {
      if (!currFilter[Filters.isPetrol]! &&
          !currFilter[Filters.isDiesel]! &&
          !currFilter[Filters.isElectric]!) {
        return true;
      }
      bool isMatch = false;
      if (currFilter[Filters.isPetrol]! && car.isPetrol) {
        isMatch = true;
      } else if (currFilter[Filters.isDiesel]! && car.isDiesel) {
        isMatch = true;
      } else if (currFilter[Filters.isElectric]! && car.isElectric) {
        isMatch = true;
      }
      return isMatch;
    }).toList();

    avaliableCars = avaliableCars.where((car) {
      if (!currFilter[Filters.isCoupe]! &&
          !currFilter[Filters.isHatchback]! &&
          !currFilter[Filters.isSedan]! &&
          !currFilter[Filters.isSUV]!) {
        return true;
      }
      bool isMatch = false;
      if (currFilter[Filters.isCoupe]! && car.isCoupe) {
        isMatch = true;
      } else if (currFilter[Filters.isSedan]! && car.isSedan) {
        isMatch = true;
      } else if (currFilter[Filters.isHatchback]! && car.isHatchback) {
        isMatch = true;
      } else if (currFilter[Filters.isSUV]! && car.isSUV) {
        isMatch = true;
      }
      return isMatch;
    }).toList();

    return avaliableCars;
  });



