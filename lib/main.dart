import 'package:flutter/material.dart';
//import 'package:custom_switch_button/custom_switch_button.dart';

void main() {
  runApp(MaterialApp(
    home: TestApp(),
  ));
}

class TestApp extends StatelessWidget //this is the app being build
{
  @override
  Widget build(BuildContext context) {
    //this is add on when 'testapp' or name turns red to distinguish

    return MaterialApp(
        home: Scaffold(
      //this is top bar & scaffold which allows text ect
      body: Column(children: <Widget>[
        AppBar(title: Text("hey man")),
        LikeButton(),
        RaisedButton(
          child: Text("pointless button"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NextApp()),
            );
          },
        ),
        SwitchCustom(),
        RaisedButton(
          child: Text("Anotha one(pointless)"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewPage()),
            );
          },
        ),
      ]),
    ));
  }
}

class LikeButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LikeButtonState();
  }
}

class _LikeButtonState extends State {
  var numLikes = 0;
  var iconPressed = false;

  void _toggleLikes() {
    setState(() {
      if (iconPressed) {
        numLikes++;
        iconPressed = false;
      } else {
        numLikes++;
        iconPressed = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ActionChip(
      label: Text(numLikes.toString()),
      avatar: Icon(iconPressed ? Icons.favorite : Icons.favorite_border,
          color: Colors.red),
      onPressed: _toggleLikes,
    );
  }
}

class SwitchCustom extends StatefulWidget {
  final bool status = false;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SwitchCustom(status);
  }
}

class _SwitchCustom extends State<SwitchCustom> {
  bool status;

  _SwitchCustom(this.status);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Switch(
          activeColor: Colors.greenAccent,
          value: status,
          onChanged: (value) {
            print("VALUE : $value");
            setState(() {
              status = value;
            });
          },
        ),
        SizedBox(
          height: 12.0,
        ),
        Text(
          'Value : $status',
          style: TextStyle(color: Colors.black, fontSize: 20.0),
        )
      ],
    );
  }
}

class NextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //this is top bar & scaffold which allows text ect
      body: Column(children: <Widget>[
        AppBar(title: Text("haha, jk. gotchu bro")),
        Row(children: <Widget>[
          Expanded(
            flex: 5,
            child: Container(
                child: Text("     YA",
                    style: TextStyle(
                      fontSize: 69,
                      color: Colors.deepPurpleAccent,
                    ))),
          ),
          Expanded(
            flex: 5,
            child: Container(
                child: Text("FOOL",
                    style: TextStyle(
                      fontSize: 69,
                      color: Colors.deepPurpleAccent,
                    ))),
          ),
        ]),
      ]),
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //this is top bar & scaffold which allows text ect
      body: Column(children: <Widget>[
        AppBar(title: Text("brooooooo")),
        Row(children: <Widget>[
          Expanded(
            flex: 5,
            child: Container(
                child: Text("anotha",
                    style: TextStyle(
                      fontSize: 69,
                      color: Colors.blueAccent,
                    ))),
          ),
          Expanded(
            flex: 5,
            child: Container(
                child: Text("  one",
                    style: TextStyle(
                      fontSize: 69,
                      color: Colors.blueAccent,
                    ))),
          ),
        ]),
      ]),
    );
  }
} 

