
import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginPage.dart';
import 'package:flutter_application_1/welcomePage.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
bool isVisible=true;

 Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
     leading: IconButton(
      onPressed:(){
         Navigator.push(
                    context,
                        MaterialPageRoute(builder: (context) => const welcomePage()),
                        
                    );},
      icon: Icon(Icons.arrow_back),
     )
    ),
    body:  SingleChildScrollView(
     child:Column(
      
      children: [

        const Padding(
          padding: EdgeInsets.only(top:5),
          child: Text('Hi!',style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
          ),


           const  Padding(
            padding: EdgeInsets.only(),
            child:Text('Create a new account',style: TextStyle(fontSize: 15,color: Colors.black),)
            ),


            const Padding(
              padding: EdgeInsets.only(top:50,left: 20,right: 20),
              child:TextField(
                decoration: InputDecoration(border: OutlineInputBorder(),labelText:'User name'),
              )
            ),


           const Padding(
              padding: EdgeInsets.only(top:15,left: 20,right: 20),
              child:TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(border: OutlineInputBorder(),labelText:'Email'),
              ),
              ),

            Padding(
              padding: EdgeInsets.only(top:15,left: 20,right: 20),
              child:TextField(
                obscureText:isVisible,
                decoration: InputDecoration(border: OutlineInputBorder(),labelText:'Password',
                suffixIcon: IconButton(
                  onPressed:(){
                    setState(() {
                      isVisible=!isVisible;
                    });
                  },
                     icon: Icon(isVisible?Icons.visibility:Icons.visibility_off))),
              ),
              ),
              

                SizedBox(
                width: 300,
                height: 90,
                child:Padding(padding: EdgeInsets.only(top:50),
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 104, 104, 104),),
                  onPressed: (){}, 
                  child:const Text('Sign Up',style: TextStyle(color:Colors.white,fontSize: 20),) ), 
                ) 

               ),



               const Padding(
                padding: EdgeInsets.only(top:10),
                child:Text('Or',style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 17, 121, 70),),)
                
                ),


               const Padding(
                padding: EdgeInsets.only(top:10),
                child:Text(' Sign Up with',style: TextStyle(fontSize: 15,color: Colors.black),)
                
                ),


                Container(
                  child: Row(
                    children: [

                      Padding(
                        padding:EdgeInsets.only(left: 100,top:10),
                        child:IconButton(onPressed: (){}, icon: Icon(Icons.facebook),color: const Color.fromARGB(255, 43, 160, 255),iconSize: 50,),
                      ),
                       Padding(
                        padding:EdgeInsets.only(left: 10,top:10),
                       child: IconButton (onPressed: (){}, icon:Image.asset('images/google.png',)),
                      ),
                       Padding(
                        padding:EdgeInsets.only(left: 10,top:7),
                         child :IconButton (onPressed: (){}, icon: Icon(Icons.apple,color: Colors.black,),iconSize: 50,)
                       
                      ),
                    ]),
                ),

                 Padding
                (
                  padding:const  EdgeInsets.only(left:5,top:0),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text('  Already have an account?',style:TextStyle( color:Colors.black,fontSize: 12)),
                       GestureDetector(
                    onTap:(){
                   Navigator.push(
                    context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                        
                    );},
                 
                child:const  Text('Log In',
                style: TextStyle(
                  color:  const Color.fromARGB(255, 17, 121, 70),
              fontSize: 12,
                ),
                
              ),)
                    ],
                    )
                
                )
                
            
              
              

     ],
     
     
     
     )



    ),
    


  );
 }
}
