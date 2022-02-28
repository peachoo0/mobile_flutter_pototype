import 'package:flutter/material.dart';
import 'package:foot_app/screen/homepage.dart';
import 'package:foot_app/screen/register.dart';


class Loginpage extends StatefulWidget {
  Loginpage({Key key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: Text('Food App',style: TextStyle(fontSize: 40,
                    foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 4
                ..color = Colors.green[500], ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                    child: Container(
                      child: 
                    Image.asset('images/logo2.png'),
                    width: 140,),
                  ),
                  Container(
                  
                  width: 350,
                  child: Column(
                    children: <Widget>[
                      TextField(
                       decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Username',
                        ),
                      ),
                    ],
                  )
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Container(
                    width: 350,
                    child: Column(
                      children: <Widget>[
                        TextField(
                          obscureText: true,
                         decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Password',
                          ),
                        ),
                      ],
                    )
                  ),
                ),

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: 
                          Container(
                            width: 90,
                            child: 
                            ElevatedButton(
                              onPressed: loginpress,
                              child: 
                              Text('Login')
                              ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: 
                          Container(
                            width: 90,
                            child: ElevatedButton(
                              onPressed: registerPressed,
                               child: Text('Register')
                               ),
                          ),
                        ),
                      ],
                    ),
                    
                    Text('2021 © Jakkapatpong Yachun',style: TextStyle(fontSize: 14),)
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void registerPressed(){
    Navigator.push(context, MaterialPageRoute
    (builder: (context) => RegisterPage(), 
                                
    ));                            
                            }

  void loginpress(){
  Navigator.push(context, MaterialPageRoute
    (builder: (context) => HomePage(), 
                                
    )) ;                      
  }
}