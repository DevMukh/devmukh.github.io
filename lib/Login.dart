import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('images/cir.jpg'),
                ),
                Text(
                  'Hi.',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Login.',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter email',
                      hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      enabled: true,
                      helperText: 'Must be valid mail',
                      helperStyle: TextStyle(color: Colors.lightGreenAccent),
                      border: OutlineInputBorder(),
                    ),
                    scribbleEnabled: true,
                    //people use Apple Pencil to enter text in any text field through fast, private, on-device handwriting recognition.
                    scrollPhysics: AlwaysScrollableScrollPhysics(),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter password',
                      hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                      prefixIcon: Icon(
                        Icons.lock_clock,
                        color: Colors.white,
                      ),
                      enabled: true,
                      helperText: 'Must be Strong Pass',
                      helperStyle: TextStyle(color: Colors.lightGreenAccent),
                      border: OutlineInputBorder(),
                    ),
                    scribbleEnabled: true,
                    //people use Apple Pencil to enter text in any text field through fast, private, on-device handwriting recognition.
                    scrollPhysics: AlwaysScrollableScrollPhysics(),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: Colors.lightBlue.shade400,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25),
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.teal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.login_sharp,
                          color: Colors.lightGreenAccent,
                          size: 20,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.lightBlue.shade400,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Does not have account?',
                      style: TextStyle(
                          color: Colors.lightBlue.shade400,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    MaterialButton(
                      onPressed: () {
                      },
                      onLongPress: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.lightBlue.shade400,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
