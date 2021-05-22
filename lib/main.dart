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
  Image? theoHappy;
  Image? theoHungry;
  Image? theoZoneOut;
  Image? theoSmirk;
  Image? theoOldTimey;
  Image? theoPlayful;
  Image? theoBrightEyedBushyTailed;
  Image? theoAmiable;
  Image? theoCry;
  String _currentImage = "assets/images/TheoAmiable.jpg";

  @override
  void initState() {
    super.initState();

    theoHappy = Image.asset("assets/images/TheoHappy.jpg");
    theoHungry = Image.asset("assets/images/TheoHungry.jpg");
    theoZoneOut = Image.asset("assets/images/TheoZoneOut.jpg");
    theoSmirk = Image.asset("assets/images/TheoSmirk.jpg");
    theoOldTimey = Image.asset("assets/images/TheoOldTimey.jpg");
    theoPlayful = Image.asset("assets/images/TheoPlayful.jpg");
    theoBrightEyedBushyTailed =
        Image.asset("assets/images/TheoBrightEyedBushyTailed.jpg");
    theoAmiable = Image.asset("assets/images/TheoAmiable.jpg");
    theoCry = Image.asset("assets/images/TheoCry.jpg");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(theoHappy!.image, context);
    precacheImage(theoHungry!.image, context);
    precacheImage(theoZoneOut!.image, context);
    precacheImage(theoSmirk!.image, context);
    precacheImage(theoOldTimey!.image, context);
    precacheImage(theoPlayful!.image, context);
    precacheImage(theoBrightEyedBushyTailed!.image, context);
    precacheImage(theoAmiable!.image, context);
    precacheImage(theoCry!.image, context);
  }

  void _setImage(String imageName) {
    setState(() {
      _currentImage = "assets/images/$imageName";
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
                    _currentImage,
                    fit: BoxFit.cover,
                    width: mediaQueryData.size.width - 60,
                    height: mediaQueryData.size.width - 60,
                    // gaplessPlayback: true,
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
                      _buildButton("Amiable", "TheoAmiable.jpg"),
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
