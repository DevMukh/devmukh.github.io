import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAbout extends StatefulWidget {
  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  myseticon(icons) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            icons,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 60, top: 35),
              child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'images/jpeee.jpg',
                    height: 400,
                    fit: BoxFit.contain,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .60),
              child: Column(
                children: [
                  // Text('Hello I am', style: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 25,
                  // )  ),
                  Text(
                    'Mr.Ameer',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Mobile Apps Developer',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 130,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Hire me',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white, primary: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      myseticon(FontAwesomeIcons.instagram),
                      myseticon(FontAwesomeIcons.linkedin),
                      myseticon(FontAwesomeIcons.github),
                      myseticon(FontAwesomeIcons.twitter),
                      myseticon(FontAwesomeIcons.facebook),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
