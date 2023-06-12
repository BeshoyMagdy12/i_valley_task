import 'package:flutter/material.dart';
import 'package:i_valley_task/featers/home_body/data/model/car/car.dart';
import 'package:i_valley_task/featers/home_body/data/services.dart';
import 'package:i_valley_task/featers/home_body/presentation/view/widget/coustom_card.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../view_model/provider.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  ScrollController _scrollController = ScrollController();

  fetchData() {
    Provider.of<HomeBodyProvider>(context, listen: false).fetchCars();
  }

  @override
  void initState() {
    super.initState();
    final CarProvider = Provider.of<HomeBodyProvider>(context, listen: false);
    CarProvider.fetchCars();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent) {
        CarProvider.fetchCars();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeBodyProvider>(context,listen: true);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: ListView.builder(
          controller: _scrollController,
          itemCount: provider.car.length,
          itemBuilder: (ctx, index) {
            print(provider.car.length);
            if (index == provider.car.length - 1) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return CoustomCard(
                img:
                    'https://assets-global.website-files.com/60ce1b7dd21cd517bb39ff20/6165fd676b85a3351aa119e5_tesla_model-s.png',
                title: provider.car[index].fullName.toString(),
                price: 'SAR ${provider.car[index].price}',
                typeCar: provider.car[index].mainTitle.toString(),
                cityName: provider.car[index].cityName.toString(),
                hours: "منذ ${provider.car[index].hours} ساعات ",
              );
            }
          }),
    );
  }
}
