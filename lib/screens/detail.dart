import 'package:flutter/material.dart';
import '../models/foods.dart';

class DetailScreen extends StatelessWidget {
  final Foods foods;
  
  const DetailScreen({Key? key, required this.foods}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // return LayoutBuilder(
    //   builder: (BuildContext context, BoxConstraints constraints) {
    //     if (constraints.maxWidth > 800) {
    //       return DetailWebPage(foods: foods);
    //     } else {
    //       return DetailMobilePage(foods: foods);
    //     }
    //   },
    // );
    return Text("aaaa");
  }
}

// class DetailMobilePage extends StatelessWidget{
//   final Foods foods;

//   const DetailMobilePage({Key? key, required this.foods}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Stack(
//                 children: <Widget>[
//                   Hero(tag: "photo", child: Image.asset(foods.imageAsset)),
//                   SafeArea(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           CircleAvatar(
//                             backgroundColor: Colors.grey,
//                             child: IconButton(
//                               icon: Icon(
//                                 Icons.arrow_back,
//                                 color: Colors.white,
//                               ),
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                             ),
//                           ),
//                           FavoriteButton(),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 16.0),
//                 child: Text(
//                   foods.name,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 30.0,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: 'Staatliches',
//                   ),
//                 )
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(vertical: 16.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: <Widget>[
//                     Column(
//                       children: <Widget> [
//                         Icon(Icons.calendar_today),
//                         SizedBox(height: 8.0),
//                         Text(foods.openDays, style: fontOxygen,),
//                       ],
//                     ),
//                     Column(
//                       children: <Widget> [
//                         Icon(Icons.access_time),
//                         SizedBox(height: 8.0),
//                         Text(foods.openTime, style: fontOxygen),
//                       ],
//                     ),
//                     Column(
//                       children: <Widget> [
//                         Icon(Icons.monetization_on),
//                         SizedBox(height: 8.0),
//                         Text(foods.ticketPrice, style: fontOxygen),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.all(16.0),
//                 child: Text(
//                   foods.description,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
//                 ),
//               ),
//               Container(
//                 height: 150,
//                 child: Scrollbar(
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     children: foods.imageUrls.map((url) {
//                       return Padding(
//                         padding: const EdgeInsets.all(4.0),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(10),
//                           child: Image.network(url),
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         )
//       ),
//     );
//   }
// }

// class DetailWebPage extends StatefulWidget {
//   final Foods foods;

//   const DetailWebPage({Key? key, required this.foods}) : super(key: key);

//   @override
//   _DetailWebPageState createState() => _DetailWebPageState();
// }

// class _DetailWebPageState extends State<DetailWebPage> {
//   final _scrollController = ScrollController();

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       // appBar: kIsWeb ? null : AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(
//           vertical: 16,
//           horizontal: 64,
//         ),
//         child: Center(
//           child: Container(
//             width: screenWidth <= 1200 ? 800 : 1200,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   'Wisata Bandung',
//                   style: TextStyle(
//                     fontFamily: 'Staatliches',
//                     fontSize: 32,
//                   ),
//                 ),
//                 SizedBox(height: 32),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       child: Column(
//                         children: [
//                           ClipRRect(
//                             child: Image.asset(widget.foods.imageAsset),
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           SizedBox(height: 16),
//                           Scrollbar(
//                             isAlwaysShown: true,
//                             controller: _scrollController,
//                             child: Container(
//                               height: 150,
//                               padding: const EdgeInsets.only(bottom: 16),
//                               child: ListView(
//                                 controller: _scrollController,
//                                 scrollDirection: Axis.horizontal,
//                                 children: widget.foods.imageUrls.map((url) {
//                                   return Padding(
//                                     padding: const EdgeInsets.all(4.0),
//                                     child: ClipRRect(
//                                       borderRadius: BorderRadius.circular(10),
//                                       child: Image.network(url),
//                                     ),
//                                   );
//                                 }).toList(),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(width: 32),
//                     Expanded(
//                       child: Card(
//                         child: Container(
//                           padding: const EdgeInsets.all(16),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             children: <Widget>[
//                               Container(
//                                 child: Text(
//                                   widget.foods.name,
//                                   textAlign: TextAlign.center,
//                                   style: const TextStyle(
//                                     fontSize: 30.0,
//                                     fontFamily: 'Staatliches',
//                                   ),
//                                 ),
//                               ),
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Row(
//                                     children: <Widget>[
//                                       Icon(Icons.calendar_today),
//                                       const SizedBox(width: 8.0),
//                                       Text(
//                                         widget.foods.openDays,
//                                         style: fontOxygen,
//                                       ),
//                                     ],
//                                   ),
//                                   FavoriteButton(),
//                                 ],
//                               ),
//                               Row(
//                                 children: <Widget>[
//                                   const Icon(Icons.access_time),
//                                   const SizedBox(width: 8.0),
//                                   Text(
//                                     widget.foods.openTime,
//                                     style: fontOxygen,
//                                   ),
//                                 ],
//                               ),
//                               const SizedBox(height: 8.0),
//                               Row(
//                                 children: <Widget>[
//                                   const Icon(Icons.monetization_on),
//                                   const SizedBox(width: 8.0),
//                                   Text(
//                                     widget.foods.ticketPrice,
//                                     style: fontOxygen,
//                                   ),
//                                 ],
//                               ),
//                               Container(
//                                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                                 child: Text(
//                                   widget.foods.description,
//                                   textAlign: TextAlign.justify,
//                                   style: const TextStyle(
//                                     fontSize: 16.0,
//                                     fontFamily: 'Oxygen',
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class FavoriteButton extends StatefulWidget {
//   @override
//   _FavoriteButtonState createState() => _FavoriteButtonState();
// }
  
// class _FavoriteButtonState extends State<FavoriteButton> {
//   bool isFavorite = false;

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       icon: Icon(
//         isFavorite ? Icons.favorite : Icons.favorite_border,
//         color: Colors.red,
//       ),
//       onPressed: () {
//         setState(() {
//           isFavorite = !isFavorite;
//         });
//       },
//     );
//   }
// }