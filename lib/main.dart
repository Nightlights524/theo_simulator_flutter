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
      flex: 10,
      child: ElevatedButton(
        onPressed: () => _setImage(imageName),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 20),
        ),
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
      body: Container(
        // padding: EdgeInsets.all(20),
        // width: 340,
        color: Colors.purple.shade50,
        // child: Center(
        // child: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
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
                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Make Theo:",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
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
                                  _buildButton("Amiable", "TheoBase.jpg"),
                                  Spacer(),
                                  _buildButton("Cry", "TheoCry.jpg"),
                                ],
                              ),
                              Row(
                                children: [
                                  _buildButton("Amiable", "TheoBase.jpg"),
                                  Spacer(),
                                  _buildButton("Cry", "TheoCry.jpg"),
                                ],
                              ),
                              Row(
                                children: [
                                  _buildButton("Amiable", "TheoBase.jpg"),
                                  Spacer(),
                                  _buildButton("Cry", "TheoCry.jpg"),
                                ],
                              ),
                              Row(
                                children: [
                                  _buildButton("Amiable", "TheoBase.jpg"),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
