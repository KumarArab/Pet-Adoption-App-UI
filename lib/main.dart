import 'package:PetAdoptionAppUI/data.dart';
import 'package:PetAdoptionAppUI/petDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      width: _width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(top: _width * 0.1, left: _width * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              "assets/images/user.jpg",
              height: _width * 0.125,
              width: _width * 0.125,
            ),
          ),
          SizedBox(
            height: _width * 0.05,
          ),
          Text(
            "Location",
            style: GoogleFonts.josefinSans(
              color: Colors.grey,
              fontWeight: FontWeight.w700,
              fontSize: _width * 0.05,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: _width * 0.05,
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/images/maps.svg",
                  height: _width * 0.1,
                  width: _width * 0.1,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Luisville",
                  style: GoogleFonts.josefinSans(
                    fontSize: _width * 0.08,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  " KL",
                  style: GoogleFonts.montserrat(
                    fontSize: _width * 0.08,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: _width * 0.2,
            child: Row(
              children: [
                Container(
                  height: _width * 0.15,
                  width: _width * 0.15,
                  decoration: BoxDecoration(
                    color: Color(0xfff5f5f5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.settings),
                ),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Category(
                        text: "Cats",
                        isSelected: false,
                      ),
                      Category(
                        text: "Dogs",
                        isSelected: true,
                      ),
                      Category(
                        text: "Ducks",
                        isSelected: false,
                      ),
                      Category(
                        text: "Pigs",
                        isSelected: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: PetData.length,
              itemBuilder: (ctx, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => PetDetails(
                          petData: PetData[index],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: _width,
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          child: Image.asset(
                            PetData[index].imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          PetData[index].title,
                          style: GoogleFonts.josefinSans(
                            fontSize: _width * 0.05,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          PetData[index].subtitle,
                          style: GoogleFonts.josefinSans(
                            fontSize: _width * 0.03,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}

class Category extends StatelessWidget {
  final String text;
  final bool isSelected;

  Category({this.isSelected, this.text});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: _width * 0.15,
      width: _width * 0.15,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
        horizontal: _width * 0.024,
        vertical: _width * 0.03,
      ),
      decoration: !isSelected
          ? BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            )
          : BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
              boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.25),
                    blurRadius: 5,
                    offset: Offset(5, 5),
                    spreadRadius: 5,
                  ),
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.25),
                    blurRadius: 5,
                    offset: Offset(-5, -5),
                    spreadRadius: 5,
                  ),
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.25),
                    blurRadius: 5,
                    offset: Offset(-5, 5),
                    spreadRadius: 5,
                  ),
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.25),
                    blurRadius: 5,
                    offset: Offset(5, -5),
                    spreadRadius: 5,
                  ),
                ]),
      child: Text(
        text,
        style: GoogleFonts.mukta(
          color: isSelected ? Colors.white : Colors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
