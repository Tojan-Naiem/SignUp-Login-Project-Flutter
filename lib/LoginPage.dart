
import 'package:flutter/material.dart';
import 'package:flutter_application_1/SignInPage.dart';
import 'package:flutter_application_1/welcomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    bool isVisible = true;


   TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
    
          leading: IconButton(
            onPressed: (){
               Navigator.push(
                    context,
                        MaterialPageRoute(builder: (context) => const welcomePage()),
                        
                    );
            },
             icon: Icon(Icons.arrow_back),
             )

        
      ),
    
      body: SingleChildScrollView(
    
        child : Column(
          children:<Widget> [

            const Padding(
              padding:EdgeInsets.only(top:20,left:0) ,

              child:Text('Welcome!',
              style:TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ) ,
              
              ),
              
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child:Text('Sign in to continue',
                style: TextStyle(
                   fontSize: 15,
                   color:Color.fromARGB(100, 17, 121, 70),
             


                 ),
                
                ),
              
              
              ),
           
            Padding(
            padding: EdgeInsets.only(top:50,left: 40,right: 40),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              controller:nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',

              ),
            ),
            ),


             Padding(

              padding: EdgeInsets.only(top:25,left: 40,right: 40),
             child: TextField(
               controller: passwordController,
               obscureText:isVisible,
               decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                suffixIcon: IconButton(
                  onPressed:(){
                    setState(() {
                      isVisible=!isVisible;
                    });
                  },
                  icon: Icon(isVisible?Icons.visibility:Icons.visibility_off),
                ),
               
              ),
            ),
              ), 
              
            const Padding(
            padding:  EdgeInsets.only(top:4,left: 250),
            child:Text('Forgot Password',

            style: TextStyle(
              color:Color.fromARGB(255, 109, 189, 164),
              fontSize: 15,
             ),
            )
            ),
        
        
        
        
         SizedBox(
              
         height: 70,
           width: 300,
        child: Container(
          
           child: Padding(
           padding: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
        onPressed: () {
         
        },
        child: const Text(
          'Log in',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor:  const Color.fromARGB(255, 104, 104, 104),
            ),
             ),
           ),
         ),
          ),
        
        Container(
                child: Center(
                  child: Row(
              children:[
            const  Padding(
            padding: EdgeInsets.only(left: 90,top: 15),
            child: Text('Don\'t have an Account? ',
            style: TextStyle(
              color:  Color.fromARGB(255, 104, 104, 104),
              fontSize: 15,
            ),
            ),
            ),


            Padding(
              padding: EdgeInsets.only(left: 0.2,top: 15),
             child: GestureDetector(
                onTap:(){
                   Navigator.push(
                context,
                        MaterialPageRoute(builder: (context) => const SignInPage()),
                        
                    );},
                 
                child:const  Text('Sign Up',
                style: TextStyle(
                  color:  const Color.fromARGB(255, 104, 104, 104),
              fontSize: 15,
                ),
                
              ),)
             
                
              ),
              ]
                  )
                )
              ),
      
             
                 Container(
                child:const  Column(
                   mainAxisAlignment: MainAxisAlignment.start, // Change to MainAxisAlignment.start to align children at the top
              crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                  Padding(
                padding: EdgeInsets.only(top:20,left:30),
                child:Text('Or',style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 17, 121, 70),),)
                
                ),

              Padding(
                padding: EdgeInsets.only(top:10),
                child:Text(' Sign Up with',style: TextStyle(fontSize: 15,color: Colors.black),)
                
                ),
                ]),



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

          ]
        ),
      ),
                );
             
  }
}   