import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  final GlobalKey<ScaffoldState> _key =GlobalKey<ScaffoldState>();
   bool homeColor=false;
   bool appointmentcolor=false;
   bool contantcolor=false;
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar:  AppBar(title: Text("HomePage",
      key: _key,
      style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.grey[100],
      leading: IconButton(icon: Icon(Icons.menu,color: Colors.black,), onPressed:(){
        _key.currentState.openDrawer();
      }),
        actions: [
          IconButton(icon: Icon(Icons.notifications_none,color: Colors.black,), onPressed: (){}),
         
          IconButton(icon: Icon(Icons.send,color: Colors.black,), onPressed:(){})
        ],
      ),
      drawer: Drawer(
      
        child:ListView(
          
          children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Jakkapatpong Yachun',style: TextStyle(color: Colors.black),), 
            decoration: BoxDecoration(color: Color(0xfff2f2f2)),
            accountEmail: Text('yachun454@gmail.com',style: TextStyle(color: Colors.black),)),
ListTile(
              selected: homeColor,
              
              onTap: (){
                setState(() {
                  homeColor=true;
                contantcolor=false;
                appointmentcolor=false;               
                                });
              
              },
                leading: Icon(Icons.home),
                title: Text("Home"),
              
            ),
              ListTile(
                selected: appointmentcolor,
              onTap: (){
                setState(() {
                  appointmentcolor=true;
                contantcolor=false;
                homeColor=false;               
                                });
              },
                leading: Icon(Icons.date_range),
                title: Text("list"),
              
            ),
              ListTile(
               selected: contantcolor,
              onTap: (){
                  setState(() {
                    contantcolor=true;
                homeColor=false;
                appointmentcolor=false;               
                                });
              },
                leading: Icon(Icons.phone),
                title: Text("Contant Callcenter"),
              
            ),
        ]
        ,
        
        ) ,
      ),
      body: Row(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                width: 432,
                
                child: Image.asset('images/food.jpg',width: double.infinity,),
              ),
              Container(
                child: Column(
                  children: [
                    Text('เมนูแนะนำ')
                  ],
                  ),
              ),
              SizedBox(height: 20,),
              Container(
                
                height: 150,
                width: 420,
                color: Colors.blue,
                child: Column(
                  children: [
                    Text('Data'),
                    Text('Data')
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
