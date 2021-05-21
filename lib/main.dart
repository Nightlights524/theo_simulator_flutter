import 'package:flutter/material.dart';

void main() => runApp(TheoSimulator());

class TheoSimulator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theo Simulator',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'Theo Simulator'),
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
  String _imagePath = "assets/images/TheoBase.jpg";

  void _setImage(String imageName) {
    setState(() {
      _imagePath = "assets/images/$imageName";
    });
  }

  Widget _buildButton(String buttonText, String imageName) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => _setImage(imageName),
        child: Text(buttonText),
      ),
    );

    // return ElevatedButton(
    //   onPressed: () => _setImage(imageName),
    //   child: Text(buttonText),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: Center(
      //   child: Container(
      body: Container(
        // padding: EdgeInsets.all(20),
        // width: 340,
        color: Colors.purple.shade50,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  _imagePath,
                  fit: BoxFit.cover,
                  width: 300,
                  height: 300,
                  gaplessPlayback: true,
                ),
                // Expanded(
                // child: Container(
                Container(
                  constraints: BoxConstraints(
                      // maxWidth: 300,
                      // minWidth: 300,
                      // minHeight: 400,
                      // maxHeight: 200,
                      ),
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Expanded(
                      //   child: Column(
                      //     mainAxisAlignment: MainAxisAlignment.start,
                      //     children: [
                      //       Text(
                      //         "Make Theo:",
                      //         style: TextStyle(
                      //             fontSize: 21, fontWeight: FontWeight.bold),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Make Theo:",
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                _buildButton("Happy", "TheoHappy.jpg"),
                                _buildButton("Hungry", "TheoHungry.jpg"),
                                // Expanded(child: _buildButton("Happy", "TheoHappy.jpg")),
                                // Expanded(child: _buildButton("Hungry", "TheoHungry.jpg")),
                              ],
                            ),
                            Row(
                              children: [
                                _buildButton("Zone Out", "TheoZoneOut.jpg"),
                                _buildButton("Smirk", "TheoSmirk.jpg"),
                              ],
                            ),
                            Row(
                              children: [
                                _buildButton("Old-Timey", "TheoOldTimey.jpg"),
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
                                _buildButton("Amiable", "TheoBase.jpg"),
                                _buildButton("Cry", "TheoCry.jpg"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Row(
                      //       children: [
                      //         _buildButton("Happy", "TheoHappy.jpg"),
                      //         _buildButton("Hungry", "TheoHungry.jpg"),
                      //         // Expanded(child: _buildButton("Happy", "TheoHappy.jpg")),
                      //         // Expanded(child: _buildButton("Hungry", "TheoHungry.jpg")),
                      //       ],
                      //     ),
                      //     Row(
                      //       children: [
                      //         _buildButton("Zone Out", "TheoZoneOut.jpg"),
                      //         _buildButton("Smirk", "TheoSmirk.jpg"),
                      //       ],
                      //     ),
                      //     Row(
                      //       children: [
                      //         _buildButton("Old-Timey", "TheoOldTimey.jpg"),
                      //         _buildButton("Playful", "TheoPlayful.jpg"),
                      //       ],
                      //     ),
                      //     Row(
                      //       children: [
                      //         _buildButton("Bright-Eyed & Bushy-Tailed",
                      //             "TheoBrightEyedBushyTailed.jpg"),
                      //       ],
                      //     ),
                      //     Row(
                      //       children: [
                      //         _buildButton("Amiable", "TheoBase.jpg"),
                      //         _buildButton("Cry", "TheoCry.jpg"),
                      //       ],
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
                // ),
              ],
            ),
          ),
        ),
      ),
      // ),
    );
  }
}
