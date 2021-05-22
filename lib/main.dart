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
        style: ElevatedButton.styleFrom(
            // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    _imagePath,
                    fit: BoxFit.cover,
                    width: mediaQueryData.size.width - 60,
                    height: mediaQueryData.size.width - 60,
                    gaplessPlayback: true,
                  ),
                  Text(
                    "Make Theo:",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
