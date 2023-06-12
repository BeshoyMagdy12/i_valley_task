import 'package:flutter/material.dart';
import 'package:i_valley_task/featers/home_body/presentation/view/home_body.dart';

class HomeBttomNavgitionBarProvider with ChangeNotifier {
  List<Widget> screens = [
    HomeBody(),
    const Center(child: Text('2')),
    const Center(child: Text('3')),
    const Center(child: Text('4')),
  ];
  List<BottomNavigationBarItem> bottomNavigationBarItems = const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
    BottomNavigationBarItem(
        icon: Icon(Icons.calendar_month), label: 'daily deals'),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
    BottomNavigationBarItem(
        icon: Icon(Icons.add), label: 'Add an advertisement'),
  ];

  int currentIndex = 0;
  void toggleScreen(int index) {
    currentIndex = index;

    notifyListeners();
  }
}
