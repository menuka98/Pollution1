import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  @override
  StartScreenState createState() => new StartScreenState();
}

class StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      // appBar: _buildBar(context),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/garbage.png"),
                fit: BoxFit.fitWidth)),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.all(10.0),
//                  child: new Image(image: AssetImage('assets/images/login.png'),
//                  ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(45, 600, 20, 0),
              child: Row(
                children: <Widget>[
                  new Container(
                    decoration: BoxDecoration(
                        color: Color(0xff9C3030),
                        border: Border.all(color: Color(0xff9C3030)),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: new FlatButton(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                        //side: BorderSide(color: Colors.orange[800])
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 130),
                      onPressed: _loginPressed,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(45, 30, 20, 0),
              child: Row(
                children: <Widget>[
                  new Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF0A1A1),
                        border: Border.all(
                          color: Color(0xffF0A1A1),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: new FlatButton(
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                        //side: BorderSide(color: Colors.orange[800])
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 120),
                      onPressed: _signupPressed,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _loginPressed() {
    Navigator.pushNamed(context, "/login");
  }

  void _signupPressed() {
    Navigator.pushNamed(context, "/signup");
  }
}
