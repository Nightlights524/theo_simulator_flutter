import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
  // String _imagePath = "assets/images/TheoCry.jpg";
  AssetImage _image = AssetImage("assets/images/TheoBase.jpg");

  void _setImage(String imageName) {
    setState(() {
      _image = AssetImage("assets/images/$imageName");
    });
  }

  Widget _buildButton(String buttonText, String imageName) {
    return ElevatedButton(
      // style: style,
      onPressed: () => _setImage(imageName),
      child: Text(buttonText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          color: Colors.yellow,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: _image,
                  width: 300,
                  height: 300,
                ),
                IntrinsicHeight(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Make Theo:",
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildButton("Happy", "TheoHappy.jpg"),
                            _buildButton("Zone Out", "TheoZoneOut.jpg"),
                            _buildButton("Old-Timey", "TheoOldTimey.jpg"),
                            _buildButton("Amiable", "TheoBase.jpg"),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            _buildButton("Hungry", "TheoHungry.jpg"),
                            _buildButton("Smirk", "TheoSmirk.jpg"),
                            _buildButton("Playful", "TheoPlayful.jpg"),
                            _buildButton("Cry", "TheoCry.jpg"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Text(
                //   '$_counter',
                //   style: Theme.of(context).textTheme.headline4,
                // ),
                _buildButton("Bright-Eyed & Bushy-Tailed",
                    "TheoBrightEyedBushyTailed.jpg"),
              ],
            ),
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () => setImage("TheoOldTimey"),
          //   tooltip: 'Increment',
          //   child: Icon(Icons.add),
          // ), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
