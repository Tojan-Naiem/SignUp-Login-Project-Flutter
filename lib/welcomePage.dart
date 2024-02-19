import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginPage.dart';
import 'package:flutter_application_1/SignInPage.dart';

class welcomePage extends StatefulWidget {
  const welcomePage({super.key});

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {


 Widget build(BuildContext context){
        
return Scaffold(

     body: Container(

       child: Column(

        children:<Widget> [
        
        Padding(
          padding: EdgeInsets.only(top:30,left: 10,bottom: 0),
          child :Container(
          height: 350,
          width: 400,
        child:Image.asset('images/boy.png'),
        ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom:0,top: 0),
          child: Text(
            'Hello!',
          style: TextStyle(
   
            fontSize: 50,
            color: Colors.black,
          ),
          ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Text('Best place to Manage your time and \nshare your journery experiences',
            style: TextStyle(fontSize: 15,color:Colors.black),
            textAlign: TextAlign.center,
            
            ),
            
            
            ),
          SizedBox(
            width: 300,
            height: 70,
              child :Padding(
            padding: EdgeInsets.only(top:20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ).merge(OutlinedButton.styleFrom(
                side: BorderSide(width: 0.4,color:  Color.fromARGB(255, 17, 121, 70),
                )
              )),
              onPressed: (){
          
                 Navigator.push(
                context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                        
                    );
               
                 },


              child: const Text('Log In',
              style: TextStyle(
               color:  Color.fromARGB(255, 17, 121, 70),
                fontSize: 20,
              
               ),
              ),
              
            ),
            
            ),
          ),
          SizedBox(
            width: 300,
            height: 70,
            
            child: Padding (
          
         padding:EdgeInsets.only(top:13),
  
         child:ElevatedButton(
          onPressed: (){
                 Navigator.push(
                context,
                        MaterialPageRoute(builder: (context) => const SignInPage()),
                        
                    );},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,

          ).merge(OutlinedButton.styleFrom(
            side: BorderSide(width: 0.4,color:Color.fromARGB(255, 17, 121, 70), )
          )),
          child:const Text('Sing Up',
          style: TextStyle(
            color: Color.fromARGB(255, 17, 121, 70),
            fontSize: 20,
          ),
          ) ,
          )
         
         
         
         )
         

          ),
       


        ],




       )

     ),

);


 }




}