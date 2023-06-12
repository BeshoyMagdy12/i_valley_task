import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CoustomCard extends StatelessWidget {
  const CoustomCard({super.key,required this.img,required this.title, required this.price,required this.typeCar,required this.cityName,required this.hours});

  final String img;
  final String title;
  final String price;
  final String typeCar;
  final String cityName;
  final String hours;

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 3,
      //   color: Colors.cyanAccent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 15.h,
              width: 35.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                      img,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.phone),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  Text(
                    price,
                    style: TextStyle(color: Colors.amber),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(typeCar),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                      ),
                      Text(cityName),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(hours)
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );;
  }
}
