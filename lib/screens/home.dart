import 'package:flutter/material.dart';
import '../screens/detail.dart';
import '../models/foods.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20)
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 24.0),
              height: 100,
              width: 100,
              child: Image.asset("assets/images/others/logoImages.png")
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile', style: TextStyle(fontSize: 16.0),),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ),
          ],
        )),
      appBar: AppBar(
        titleSpacing: 2,
        centerTitle: true,
        title: Container(
          padding: const EdgeInsets.all(24.0),
          height: 90, 
          child: Image.asset('assets/images/others/logoText.png')
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      // body: LayoutBuilder(
      //   builder: (BuildContext context, BoxConstraints constraints) {
      //     if (constraints.maxWidth <= 850) {
      //       return FoodGrid(gridCount: 2);
      //     } else if (constraints.maxWidth <= 1250) {
      //       return FoodGrid(gridCount: 4);
      //     } else {
      //       return FoodGrid(gridCount: 6);
      //     }
      //   }
      // ),
      body: Center(
        child: Image.asset("assets/images/foods/bakso.png", width: 150, height: 150,),
      )
    );
  }
}

// class FoodGrid extends StatelessWidget {
//   final int gridCount;

//   const FoodGrid({Key? key, required this.gridCount}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scrollbar(
//       isAlwaysShown: true,
//       child: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: GridView.count(
//           crossAxisCount: gridCount,
//           crossAxisSpacing: 16,
//           mainAxisSpacing: 16,
//           children: foodLists.map((foods) {
//             return InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return DetailScreen(foods: foods);
//                 }));
//               },
//               child: Card(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     Expanded(
//                       child: Image.asset(
//                         foods.imageAsset,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 8.0),
//                       child: Text(
//                         foods.name,
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
//                       child: Text(
//                         foods.location,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }