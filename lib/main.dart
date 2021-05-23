// import 'package:flutter/material.dart';

// void main() => runApp(TheoSimulator());

// class TheoSimulator extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     const String appTitle = "Theo Simulator";
//     return MaterialApp(
//       title: appTitle,
//       theme: ThemeData(
//         primarySwatch: Colors.deepPurple,
//         // textTheme: TextTheme(
//         //   button: TextStyle(fontSize: 45.sp),
//         // ),
//       ),
//       home: MyHomePage(title: appTitle),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var _currentImage = "assets/images/TheoAmiable.jpg";

//   // Load images to precache
//   final images = <Image>[
//     Image.asset("assets/images/TheoHappy.jpg"),
//     Image.asset("assets/images/TheoHungry.jpg"),
//     Image.asset("assets/images/TheoZoneOut.jpg"),
//     Image.asset("assets/images/TheoSmirk.jpg"),
//     Image.asset("assets/images/TheoOldTimey.jpg"),
//     Image.asset("assets/images/TheoPlayful.jpg"),
//     Image.asset("assets/images/TheoBrightEyedBushyTailed.jpg"),
//     Image.asset("assets/images/TheoAmiable.jpg"),
//     Image.asset("assets/images/TheoCry.jpg"),
//   ];

//   // Actually call the precache function inside didChangeDependencies
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     for (var image in images) {
//       precacheImage(image.image, context);
//     }
//   }

//   void _setImage(String imageName) {
//     if (_currentImage == "assets/images/$imageName") {
//       return;
//     }
//     setState(() {
//       _currentImage = "assets/images/$imageName";
//     });
//   }

//   Widget _buildButton(String buttonText, String imageName) {
//     return Expanded(
//       flex: 10,
//       child: Container(
//         margin: EdgeInsets.only(top: 12),
//         child: ElevatedButton(
//           onPressed: () => _setImage(imageName),
//           style: ElevatedButton.styleFrom(
//             tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//           ),
//           child: Text(
//             buttonText,
//             style: TextStyle(fontSize: 19),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final mediaQueryData = MediaQuery.of(context);
//     // final isPortrait = mediaQueryData.orientation == Orientation.portrait;
//     // final photoSafeWidth = mediaQueryData.size.width * 0.9;
//     // final photoSafeHeight = (mediaQueryData.size.height / 2) * 0.9;
//     // final photoDimension =
//     //     photoSafeWidth < photoSafeHeight ? photoSafeWidth : photoSafeHeight;

//     return Scaffold(
//       // backgroundColor: Colors.purple.shade50,
//       appBar: AppBar(
//         title: Text(widget.title),
//         centerTitle: true,
//       ),
//       body: LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints) {
//           final mediaQueryData = MediaQuery.of(context);
//           final isPortrait = mediaQueryData.orientation == Orientation.portrait;
//           // final photoSafeWidth = mediaQueryData.size.width * 0.9;
//           // final photoSafeHeight = (mediaQueryData.size.height / 2) * 0.9;
//           final photoSafeWidth = constraints.maxWidth * 0.9;
//           final photoSafeHeight = (constraints.maxHeight / 2) * 0.9;
//           // final photoSafeWidth = constraints.maxWidth;
//           // final photoSafeHeight = (constraints.maxHeight / 2);
//           final photoDimension = photoSafeWidth < photoSafeHeight
//               ? photoSafeWidth
//               : photoSafeHeight;

//           return Align(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Image.asset(
//                   _currentImage,
//                   fit: BoxFit.cover,
//                   width: isPortrait ? photoDimension : photoSafeWidth / 2,
//                   height: isPortrait ? photoDimension : photoSafeWidth / 2,
//                   // width: isPortrait ? photoDimension : 350,
//                   // height: isPortrait ? photoDimension : 350,
//                   // width: isPortrait ? 340.w : 350,
//                   // height: isPortrait ? 340.w : 350,
//                   // width: isPortrait ? mediaQueryData.size.width - 80.w : 350,
//                   // height: isPortrait ? mediaQueryData.size.width - 80.w : 350,
//                   // gaplessPlayback: true,
//                 ),
//                 Container(
//                   color: Colors.blue,
//                   width: isPortrait ? photoDimension : photoSafeWidth / 2,
//                   // height: isPortrait ? photoDimension : photoSafeWidth / 2,
//                   // width: isPortrait ? photoSafeWidth : 350,
//                   // width: isPortrait ? photoDimension : 350,
//                   // height: isPortrait ? photoDimension : 350,
//                   // width: isPortrait ? 340.w : 350,
//                   // width: isPortrait ? mediaQueryData.size.width - 80.w : 350,
//                   child: Column(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.only(top: 12),
//                         child: Text(
//                           "Make Theo:",
//                           style: TextStyle(
//                               fontSize: 26, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           _buildButton("Happy", "TheoHappy.jpg"),
//                           Spacer(),
//                           _buildButton("Hungry", "TheoHungry.jpg"),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           _buildButton("Zone Out", "TheoZoneOut.jpg"),
//                           Spacer(),
//                           _buildButton("Smirk", "TheoSmirk.jpg"),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           _buildButton("Old-Timey", "TheoOldTimey.jpg"),
//                           Spacer(),
//                           _buildButton("Playful", "TheoPlayful.jpg"),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           _buildButton("Bright-Eyed & Bushy-Tailed",
//                               "TheoBrightEyedBushyTailed.jpg"),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           _buildButton("Amiable", "TheoAmiable.jpg"),
//                           Spacer(),
//                           _buildButton("Cry", "TheoCry.jpg"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(TheoSimulator());

class TheoSimulator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const String appTitle = "Theo Simulator";
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // textTheme: TextTheme(
        //   button: TextStyle(fontSize: 45.sp),
        // ),
      ),
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentImage = "assets/images/TheoAmiable.jpg";

  // Load images to precache
  final images = <Image>[
    Image.asset("assets/images/TheoHappy.jpg"),
    Image.asset("assets/images/TheoHungry.jpg"),
    Image.asset("assets/images/TheoZoneOut.jpg"),
    Image.asset("assets/images/TheoSmirk.jpg"),
    Image.asset("assets/images/TheoOldTimey.jpg"),
    Image.asset("assets/images/TheoPlayful.jpg"),
    Image.asset("assets/images/TheoBrightEyedBushyTailed.jpg"),
    Image.asset("assets/images/TheoAmiable.jpg"),
    Image.asset("assets/images/TheoCry.jpg"),
  ];

  // Actually call the precache function inside didChangeDependencies
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    for (var image in images) {
      precacheImage(image.image, context);
    }
  }

  void _setImage(String imageName) {
    if (_currentImage == "assets/images/$imageName") {
      return;
    }
    setState(() {
      _currentImage = "assets/images/$imageName";
    });
  }

  Widget _buildButton(String buttonText, String imageName) {
    return Expanded(
      flex: 10,
      child: Container(
        margin: EdgeInsets.only(top: 12),
        child: ElevatedButton(
          onPressed: () => _setImage(imageName),
          style: ElevatedButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 17),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final mediaQueryData = MediaQuery.of(context);
    // final isPortrait = mediaQueryData.orientation == Orientation.portrait;
    // final photoSafeWidth = mediaQueryData.size.width * 0.9;
    // final photoSafeHeight = (mediaQueryData.size.height / 2) * 0.9;
    // final photoDimension =
    //     photoSafeWidth < photoSafeHeight ? photoSafeWidth : photoSafeHeight;

    return Scaffold(
      // backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final mediaQueryData = MediaQuery.of(context);
          final isPortrait = mediaQueryData.orientation == Orientation.portrait;
          // final photoSafeWidth = mediaQueryData.size.width * 0.9;
          // final photoSafeHeight = (mediaQueryData.size.height / 2) * 0.9;
          final photoSafeWidth = constraints.maxWidth * 0.9;
          final photoSafeHeight = (constraints.maxHeight / 2) * 0.9;
          // final photoSafeWidth = constraints.maxWidth;
          // final photoSafeHeight = (constraints.maxHeight / 2);
          final photoDimension = photoSafeWidth < photoSafeHeight
              ? photoSafeWidth
              : photoSafeHeight;

          return Center(
            child: SingleChildScrollView(
              child:
                  // slivers: [
                  Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        _currentImage,
                        fit: BoxFit.cover,
                        width: isPortrait ? photoDimension : photoSafeWidth / 2,
                        height:
                            isPortrait ? photoDimension : photoSafeWidth / 2,
                        // width: isPortrait ? photoDimension : 350,
                        // height: isPortrait ? photoDimension : 350,
                        // width: isPortrait ? 340.w : 350,
                        // height: isPortrait ? 340.w : 350,
                        // width: isPortrait ? mediaQueryData.size.width - 80.w : 350,
                        // height: isPortrait ? mediaQueryData.size.width - 80.w : 350,
                        // gaplessPlayback: true,
                      ),
                      Container(
                        // color: Colors.blue,
                        width: isPortrait ? photoDimension : photoSafeWidth / 2,
                        // width: isPortrait ? photoDimension : photoSafeWidth / 2,
                        // width: isPortrait ? photoSafeWidth : 350,
                        // width: isPortrait ? photoDimension : 350,
                        // height: isPortrait ? photoDimension : 350,
                        // width: isPortrait ? 340.w : 350,
                        // width: isPortrait ? mediaQueryData.size.width - 80.w : 350,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 12),
                              child: Text(
                                "Make Theo:",
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: [
                                _buildButton("Happy", "TheoHappy.jpg"),
                                Spacer(),
                                _buildButton("Hungry", "TheoHungry.jpg"),
                              ],
                            ),
                            Row(
                              children: [
                                _buildButton("Zone Out", "TheoZoneOut.jpg"),
                                Spacer(),
                                _buildButton("Smirk", "TheoSmirk.jpg"),
                              ],
                            ),
                            Row(
                              children: [
                                _buildButton("Old-Timey", "TheoOldTimey.jpg"),
                                Spacer(),
                                _buildButton("Playful", "TheoPlayful.jpg"),
                              ],
                            ),
                            Row(
                              children: [
                                _buildButton("Bright-Eyed & Bushy-Tailed",
                                    "TheoBrightEyedBushyTailed.jpg"),
                              ],
                            ),
                            Row(
                              children: [
                                _buildButton("Amiable", "TheoAmiable.jpg"),
                                Spacer(),
                                _buildButton("Cry", "TheoCry.jpg"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // ],
            ),
          );
        },
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// void main() => runApp(TheoSimulator());

// class TheoSimulator extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     const String appTitle = "Theo Simulator";
//     return ScreenUtilInit(
//       designSize: Size(390, 844),
//       builder: () => MaterialApp(
//         title: appTitle,
//         theme: ThemeData(
//           primarySwatch: Colors.deepPurple,
//           // textTheme: TextTheme(
//           //   button: TextStyle(fontSize: 45.sp),
//           // ),
//         ),
//         home: MyHomePage(title: appTitle),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var _currentImage = "assets/images/TheoAmiable.jpg";

//   // Load images to precache
//   final images = <Image>[
//     Image.asset("assets/images/TheoHappy.jpg"),
//     Image.asset("assets/images/TheoHungry.jpg"),
//     Image.asset("assets/images/TheoZoneOut.jpg"),
//     Image.asset("assets/images/TheoSmirk.jpg"),
//     Image.asset("assets/images/TheoOldTimey.jpg"),
//     Image.asset("assets/images/TheoPlayful.jpg"),
//     Image.asset("assets/images/TheoBrightEyedBushyTailed.jpg"),
//     Image.asset("assets/images/TheoAmiable.jpg"),
//     Image.asset("assets/images/TheoCry.jpg"),
//   ];

//   // Actually call the precache function inside didChangeDependencies
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     for (var image in images) {
//       precacheImage(image.image, context);
//     }
//   }

//   void _setImage(String imageName) {
//     if (_currentImage == "assets/images/$imageName") {
//       return;
//     }
//     setState(() {
//       _currentImage = "assets/images/$imageName";
//     });
//   }

//   Widget _buildButton(String buttonText, String imageName) {
//     return Expanded(
//       flex: 10,
//       child: Container(
//         margin: EdgeInsets.only(top: 12),
//         child: ElevatedButton(
//           onPressed: () => _setImage(imageName),
//           style: ElevatedButton.styleFrom(
//             tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//           ),
//           child: Text(
//             buttonText,
//             style: TextStyle(fontSize: 19),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final mediaQueryData = MediaQuery.of(context);
//     final isPortrait = mediaQueryData.orientation == Orientation.portrait;
//     final photoSafeWidth = mediaQueryData.size.width * 0.9;
//     final photoSafeHeight = (mediaQueryData.size.height / 2) * 0.9;
//     final photoDimension =
//         photoSafeWidth < photoSafeHeight ? photoSafeWidth : photoSafeHeight;

//     return Scaffold(
//       // backgroundColor: Colors.purple.shade50,
//       appBar: AppBar(
//         title: Text(widget.title),
//         centerTitle: true,
//       ),
//       body: CustomScrollView(
//         slivers: [
//           SliverFillRemaining(
//             hasScrollBody: false,
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Image.asset(
//                     _currentImage,
//                     fit: BoxFit.cover,
//                     width: isPortrait ? photoDimension : 350,
//                     height: isPortrait ? photoDimension : 350,
//                     // width: isPortrait ? 340.w : 350,
//                     // height: isPortrait ? 340.w : 350,
//                     // width: isPortrait ? mediaQueryData.size.width - 80.w : 350,
//                     // height: isPortrait ? mediaQueryData.size.width - 80.w : 350,
//                     // gaplessPlayback: true,
//                   ),
//                   FittedBox(
//                     fit: BoxFit.fill,
//                     child: Container(
//                       // color: Colors.blue,
//                       width: isPortrait ? photoDimension : 350,
//                       // height: isPortrait ? photoDimension : 350,
//                       // width: isPortrait ? 340.w : 350,
//                       // width: isPortrait ? mediaQueryData.size.width - 80.w : 350,
//                       child: Column(
//                         children: [
//                           Container(
//                             margin: EdgeInsets.only(top: 12),
//                             child: Text(
//                               "Make Theo:",
//                               style: TextStyle(
//                                   fontSize: 26, fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               _buildButton("Happy", "TheoHappy.jpg"),
//                               Spacer(),
//                               _buildButton("Hungry", "TheoHungry.jpg"),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               _buildButton("Zone Out", "TheoZoneOut.jpg"),
//                               Spacer(),
//                               _buildButton("Smirk", "TheoSmirk.jpg"),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               _buildButton("Old-Timey", "TheoOldTimey.jpg"),
//                               Spacer(),
//                               _buildButton("Playful", "TheoPlayful.jpg"),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               _buildButton("Bright-Eyed & Bushy-Tailed",
//                                   "TheoBrightEyedBushyTailed.jpg"),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               _buildButton("Amiable", "TheoAmiable.jpg"),
//                               Spacer(),
//                               _buildButton("Cry", "TheoCry.jpg"),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
