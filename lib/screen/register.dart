import 'package:flutter/material.dart';
import 'package:foot_app/screen/homepage.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [

      ],),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(

              mainAxisAlignment: MainAxisAlignment.center,

              
              children: [
                
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Column(
                    children: [
                      Text('Register',style: TextStyle(fontSize: 30),),
                      Padding(
                        
                        padding: const EdgeInsets.fromLTRB(0,50, 0, 0),
                        child: Container(
                          height: 350,
                          width: 400,
                         
                          child: Column(children: <Widget>[
                            TextFormField(
                                    decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    icon: Icon(Icons.verified_user),
                                    hintText: 'Username',
                                  ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                                            TextFormField(
                                              obscureText:true,
                                    decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    icon: Icon(Icons.vpn_key),
                                    hintText: 'Password',
                                  ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                                            TextFormField(
                                              obscureText:true,
                                    decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    icon: Icon(Icons.vpn_key),
                                    hintText: 'ConfirmPassword' ,
                                  ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          TextFormField(
                                    decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    icon: Icon(Icons.email),
                                    hintText: 'Email',
                                  ),
                            ),
                                                        SizedBox(
                              height: 10,
                            ),
                          TextFormField(
                                    decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    icon: Icon(Icons.phone),
                                    hintText: 'PhoneNumber',
                                  ),
                            ),

                          ],),
                        ),
                      ),
                                      Column(
                  children: [
                    Container(
                      width: 300,
                      child: 
                        ElevatedButton(
                          onPressed: confirm ,
                          child: 
                          Text('ตกลง',style: TextStyle(fontSize: 22),),),
                    )
                  ],
                ),
                Row(
                children: [
                  Text('-------------------or-------------------',style: TextStyle(fontSize: 20),),
                  Column(
                    children: [
                      Card()
                    ],
                  )
                ],
              )
                
                    ],
                    
                  ),
                ),

              ],
              
            ),
          ],
        ),
      ),
    );
  }

  void confirm() {
  Navigator.push(context, MaterialPageRoute
    (builder: (context) => HomePage(), 
                                
    )) ;         
                                          }
}