import 'package:flutter/material.dart';
import 'package:elearningappforkids/TeacherPage.dart';
import 'package:elearningappforkids/ColorScheme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      routes: {
        '/TeacherPage': (context) => TeacherPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
            onPressed: null),
        actions: [
          Icon(
            Icons.notifications_none,
            color: Colors.black,
            size: 30.0,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/images/searchBg.png'),
                  fit: BoxFit.contain),
            ),
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(fontSize: 16.0, fontFamily: 'circe'),
                  ),
                  Text(
                    'Anz Bro',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'circe',
                        fontWeight: FontWeight.w700),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 70.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white),
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.search,
                              size: 30.0,
                              color: Colors.black,
                            ),
                            onPressed: null),
                        Expanded(
                          child: TextField(
                            style:
                                TextStyle(fontFamily: 'circe', fontSize: 18.0),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search for courses or tutors...'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30.0),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top Rated Tutors',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'See all',
                        style:
                            TextStyle(fontSize: 13.0, color: Colors.blueAccent),
                      )
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          tutorialWidget("boy1Big", "Mr. Tony Stark", "English",
                              "0-6", "150"),
                          tutorialWidget("girl", "Ms. Leena Dey",
                              "Arts & Crafts", "0-4", "100"),
                          tutorialWidget("boy2", "Mr. Jason Shrute", "Maths",
                              "0-7", "300"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  InkWell tutorialWidget(
      String img, String name, String sub, String grade, String price) {
    return InkWell(
      onTap: () => openTeacherPage(),
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: lightBlue.withOpacity(0.5),
        ),
        child: Row(
          children: [
            Container(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(30.0)),
                    child: Container(
                      height: 125,
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/images/iconBgNew.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 130,
                    padding: EdgeInsets.only(left: 5.0, top: 5.0),
                    child: Stack(
                      children: [
                        Container(
                          child: RotatedBox(
                            quarterTurns: 2,
                            child: Icon(
                              Icons.star,
                              color: darkBlue,
                              size: 60,
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          child: Center(
                            child: Text(
                              '4.5',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 50,
                    child: Hero(
                      tag: img,
                      child: Container(
                        width: 100,
                        height: 130,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('asset/images/$img.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'GRADE $grade',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 19.0, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '$sub Teacher',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: darkBlue,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '\$$price/session',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void openTeacherPage() {
    Navigator.pushNamed(context, '/TeacherPage');
  }
}
