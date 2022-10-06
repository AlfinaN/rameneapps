import 'package:flutter/material.dart';
import 'package:rameneapps/home_page.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(50.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Align(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Welcome Back',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              Align(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Delicious as is or tossed with your\nfavorite ingredients',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 40)),
              Container(
                width: 320,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: HexColor('909090'),
                    width: 1,
                  ),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    labelText: "Email",
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              Container(
                width: 320,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: HexColor('909090'),
                    width: 1,
                  ),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    labelText: "Password",
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 250)),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 368,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(const Size(200, 20)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              HexColor('FFA600')),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(
                                          color: HexColor('FFA600'))))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: HexColor('ffffff'),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))),
              Row(
                children: <Widget>[
                  Text('Dont have an account yet?'),
                  TextButton(onPressed: onPressed, child: Text('Sign Up'))
                ],
              )
            ]),
      ),
    );
  }

  void onPressed() {}
}
