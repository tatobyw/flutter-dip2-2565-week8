import 'package:flutter/material.dart';

import 'contact.dart';
import 'login.dart';

class Home extends StatelessWidget{
  const Home({Key? key}):super(key: key); //1.constructor

  @override
  Widget build(BuildContext context){ //2.build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter Basic"),
      ),
      body: Center(
          child: Column(
            children: [
              Text("Welcome"),
              Text("To Lungtoo"),
            ],
          )
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Dong Hub"),
                accountEmail: Text("DongEZ@eie.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://scontent.fbkk6-2.fna.fbcdn.net/v/t39.30808-6/292179591_578611643665774_5733455629215337930_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGGS7WJgiaPomXYF7e4USRIdQB7gcm7S1p1AHuBybtLWu7qR7VmRFQkCEcFw-cXF6yMLq1SOGs8nJs_8GVIbBsh&_nc_ohc=DmOpU0iw7rYAX_wtC0J&tn=XihEMfGAAOeB5L7q&_nc_ht=scontent.fbkk6-2.fna&oh=00_AT_7bpLjO6CXjricg092N3PIvxntcaJEdaCXRueDFfrHeg&oe=62CAC40E"),
              ),
            ),
            ListTile(
              title: Text("Home",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.home,color: Colors.blue,size: 30,),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
              },
            ),
            ListTile(
              title: Text("Login",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.login,color: Colors.blue,size: 30,),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
              },
            ),
            ListTile(
              title: Text("Contacts",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.contacts,color: Colors.blue,size: 30,),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ContactPage()));
              },
            ),
            ListTile(
              title: Text("Exit",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.logout,color: Colors.blue,size: 30,),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}