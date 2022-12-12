import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProject extends StatefulWidget {
  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  @override
  ownpro(lang, title, desc, star, icon) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                desc,
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    star,
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        icon,
                        color: Colors.white,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Project',
          style: TextStyle(
              color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black54,
        centerTitle: true,
        elevation: 3.0,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              ownpro('Flutter', 'Click To Code', 'An online compiler', '9.5',
                  FontAwesomeIcons.github),
              ownpro('Java', 'Start with devmukh', 'Fix and learn', '7.5',
                  FontAwesomeIcons.github),
              ownpro('Python', 'fixing enhance skills', 'Write and learn', '8',
                  FontAwesomeIcons.github),
              ownpro('C ', 'Beigning to experty', 'Just do it ', '7',
                  FontAwesomeIcons.github),
              ownpro('Amazon ', 'Invest and wait', 'Check my tutorial', '6.5',
                  FontAwesomeIcons.github),
              ownpro('Photo Editting ', 'Click and Post', 'Stay tuned', '7',
                  FontAwesomeIcons.youtube),
              ownpro('React', 'Online compiler', 'Practice with devMukh ', '7.5',
                  FontAwesomeIcons.github),
            ],
          ),
        ),
      ),
    );
  }
}
