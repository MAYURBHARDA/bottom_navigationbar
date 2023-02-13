// import 'package:bottom_navigationbar/test.dart';
import 'package:bottom_navigationbar/bottom_navigation_appBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomAppBars(),
    );
  }
}
//
// class MyHomePage extends StatefulWidget {
//   final int _selectedIndex;
//
//   const MyHomePage(this._selectedIndex, {super.key});
//
//   @override
//   State<StatefulWidget> createState() {
//     return MyHomePageState(_selectedIndex);
//   }
// }
//
// class MyHomePageState extends State<MyHomePage>
//     with SingleTickerProviderStateMixin {
//   int _selectedIndex = 1;
//   AnimationController? _controller;
//
//   DateTime pre_backpress = DateTime.now();
//   final List<Widget> _widgetOptions = <Widget>[
//     const Home(),
//     const Login(),
//     const Test()
//   ];
//   List<dynamic> BottomList = [
//     {"unselected": "assets/home.png", "selected": "assets/homefilled.png"},
//     {"unselected": "assets/login.png", "selected": "assets/loginfilled.png"},
//     {"unselected": "assets/test.png", "selected": "assets/testcolor.png"},
//   ];
//
//   MyHomePageState(this._selectedIndex);
//
//   bool select = false;
//   bool select1 = false;
//   bool select2 = false;
//   bool select3 = false;
//
//   @override
//   void initState() {
//     _controller = AnimationController(vsync: this);
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _controller!.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         final timeGap = DateTime.now().difference(pre_backpress);
//         final cantExit = timeGap >= const Duration(seconds: 2);
//         pre_backpress = DateTime.now();
//         if (cantExit) {
//           const snack = SnackBar(
//             content: Text('Press Back Button again to Exit'),
//             duration: Duration(seconds: 2),
//           );
//           ScaffoldMessenger.of(context).showSnackBar(snack);
//           return false;
//         } else {
//           return true;
//         }
//       },
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         extendBody: true,
//         bottomNavigationBar: SafeArea(
//           child: Container(
//             color: Colors.transparent,
//             height: 70,
//             padding: const EdgeInsets.only(bottom: 0.0),
//             alignment: Alignment.bottomCenter,
//             child: Stack(
//               children: [
//                 Positioned(
//                   left: 0,
//                   right: 0,
//                   bottom: 0,
//                   height: 50,
//                   child: Container(
//                     color: Colors.white,
//                   ),
//                 ),
//                 Positioned(
//                     child: Container(
//                   color: Colors.transparent,
//                   child: GridView.builder(
//                     physics: const NeverScrollableScrollPhysics(),
//                     gridDelegate:
//                         const SliverGridDelegateWithFixedCrossAxisCount(
//                             crossAxisSpacing: 5,
//                             mainAxisSpacing: 5,
//                             childAspectRatio: 1 / 0.60,
//                             crossAxisCount: 4),
//                     shrinkWrap: true,
//                     itemCount: _widgetOptions.length,
//                     itemBuilder: (BuildContext context, int Index) {
//                       return GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             _selectedIndex = Index;
//                           });
//                         },
//                         child: Container(
//                           height: 50,
//                           alignment: Alignment.bottomCenter,
//                           child: (_selectedIndex == Index)
//                               ? Image.asset(
//                                   BottomList[Index]["selected"].toString(),
//                                   height: 70,
//                                 )
//                               : Image.asset(
//                                   BottomList[Index]["unselected"].toString(),
//                                   height: 50,
//                                 ),
//                         ),
//                       );
//                     },
//                   ),
//                 ))
//               ],
//             ),
//           ),
//         ),
//         body: _widgetOptions.elementAt(_selectedIndex),
//         // This trailing comma makes auto-formatting nicer for build methods.
//       ),
//     );
//   }
// }
