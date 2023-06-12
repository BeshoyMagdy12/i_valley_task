import 'package:dio/dio.dart';
import 'package:i_valley_task/core/utilites/dio_healper.dart';
import 'package:i_valley_task/featers/home_body/data/model/car/car.dart';

class ServicesCar {
  Future<List<CarModel>> getAllCar({required int pageNumber}) async {
    List<CarModel> carList = [];

    try {
      print('Successxz!');
      Response data = await DioHealper.postRequest(
        endPont: 'GetAllAvilableCar',
        data: {
          "pageNumber": pageNumber,
          "advertTypeId": 2,
          "rowsOfPage": 10,
        },
      );
      print('Successx!');
      if (data.statusCode == 200) {
        print('Success!');
        for (var car in data.data) {
          carList.add(CarModel.fromJson(car));
        }
      } else {
        print('Error!');
      }
    } catch (e) {
      print(e);
    }

 //   print(carList.length);

    return carList;
  }
}
