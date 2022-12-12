import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightGreen,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('images/avatar.jpg'),
                  ),
                  Text(
                    'Create An Account',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
                        prefixIcon: Icon(Icons.person,size: 22,color: Colors.black,),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Middle Name',
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
                        prefixIcon: Icon(Icons.person,size: 22,color: Colors.black,),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Enter email',
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
                        prefixIcon: Icon(Icons.attach_email,size: 22,color: Colors.black,),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      obscureText: true,
                      autocorrect: true,
                      autofocus: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
                        prefixIcon: Icon(Icons.lock_person_outlined,size: 18,color: Colors.black,),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
                        prefixIcon: Icon(Icons.recommend,size: 22,color: Colors.black,),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
                        prefixIcon: Icon(Icons.contact_phone,size: 22,color: Colors.black,),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  MaterialButton(
                    onPressed: () {
                    },
                    color: Colors.white,
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.lightBlue.shade400,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
