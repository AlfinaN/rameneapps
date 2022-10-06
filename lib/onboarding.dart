import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rameneapps/login_.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 60),
            width: 85,
            height: 58,
            child: Image.asset('assets/logo.png'),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 200,
            height: 200,
            child: Image.asset('assets/start.png'),
          ),
          Container(
            margin: EdgeInsets.only(top: 45),
            child: Text(
              'All your\nfavourite ramen',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Text(
              'Delicious as is or tossed with your\nfavorite ingredients',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 64),
              width: 368,
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(200, 20)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(HexColor('FFA600')),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(color: HexColor('FFA600'))))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return Login_();
                      },
                    ));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: HexColor('ffffff'),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ))),
          Container(
              margin: EdgeInsets.only(top: 10),
              width: 368,
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(200, 20)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(HexColor('ffffff')),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(color: HexColor('909090'))))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return Login_();
                      },
                    ));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: HexColor('909090'),
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ))),
        ],
      ),
    ));
  }
}
