import 'package:flutter/material.dart';
import 'package:i_valley_task/featers/home_body/data/model/car/car.dart';

import '../../data/services.dart';

class HomeBodyProvider with ChangeNotifier {

  //----------initial varibles
  int _pageNumber = 1;
  bool _isLoading = false;
  List<CarModel> _carList = [];

  //-----get method----------------------
  List<CarModel> get car => _carList;
  bool get isLoading => _isLoading;

//----------fetch data and pagination
  Future<void> fetchCars() async {
    if (_isLoading) return;

    _isLoading = true;
    notifyListeners();

    try {
      final List<CarModel> fetchedPosts =await ServicesCar().getAllCar(pageNumber: _pageNumber);
      _carList.addAll(fetchedPosts);
      _pageNumber++;
      _isLoading = false;
      notifyListeners();
    } catch (error) {
      _isLoading = false;
      notifyListeners();
      throw Exception('Failed to fetch posts: $error');
    }
  }

















  // Future<void> fetchAllCars() async {
  //   List<CarModel> cars = await ServicesCar().getAllCar(); //
  //   if (cars.isNotEmpty) {
  //     _carList.addAll(cars);
  //   } else {
  //     _carList = [];
  //   }
  //   notifyListeners();
  // }


}
