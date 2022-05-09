import 'package:flutter/material.dart';

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
      body: Center(child: Text("hai")),
      // body: LayoutBuilder(
      //   builder: (BuildContext context, BoxConstraints constraints) {
      //     if (constraints.maxWidth <= 850) {
      //       return TourismPlaceList();
      //     } else if (constraints.maxWidth <= 1250) {
      //       return TourismPlaceGrid(gridCount: 4);
      //     } else {
      //       return TourismPlaceGrid(gridCount: 6);
      //     }
      //   }
      // ),
    );
  }
}

// class TourismPlaceList extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemBuilder: (context, index) {
//         final TourismPlace place = tourismPlaceList[index];
//         return InkWell(
//           onTap: () {
//             Navigator.push(context, MaterialPageRoute(builder: (context) {
//               return DetailScreen(place: place);
//             }));
//           },
//           child: Card(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Expanded(
//                   flex: 1,
//                   child: Hero(tag: "photo", child: Image.asset(place.imageAsset)),
//                 ),
//                 Expanded(
//                   flex: 2,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Text(                            place.name,
//                           style: TextStyle(fontSize: 16.0),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(place.location),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//           ),
//           ),
//         );
//       },
//       itemCount: tourismPlaceList.length,
//     );
//   }
// }

// class TourismPlaceGrid extends StatelessWidget {
//   final int gridCount;
  
//   TourismPlaceGrid({required this.gridCount});

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
//           children: tourismPlaceList.map((place) {
//             return InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return DetailScreen(place: place);
//                 }));
//               },
//               child: Card(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     Expanded(
//                       child: Image.asset(
//                         place.imageAsset,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 8.0),
//                       child: Text(
//                         place.name,
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
//                       child: Text(
//                         place.location,
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