import 'package:flutter/material.dart';
import 'package:i_valley_task/featers/bottom_nava_bar/presentation/view_model/provider.dart';
import 'package:provider/provider.dart';

class HomeBttomNavgitionBar extends StatelessWidget {
  const HomeBttomNavgitionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeBttomNavgitionBarProvider>(
      builder: (ctx, prov, child) => Scaffold(
        appBar: AppBar(
   title: ((){
     if(prov.currentIndex==0){
       return Text('سيارات متاحة');
     }else if(prov.currentIndex==1){
     return  Text('الصفقات المتاحة');
     }else if(prov.currentIndex==2){
       return Text('بحث');
     }else{
      return Text(' اضف اعلانك');
     }
   }()),
          actions: [IconButton(onPressed: (){}, icon:Icon(
        Icons.format_list_bulleted_outlined,
      ))],
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: prov.bottomNavigationBarItems,
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.black,
          currentIndex: prov.currentIndex,
          onTap: prov.toggleScreen,
        ),
        body: prov.screens[prov.currentIndex],
      ),
    );
  }
}
