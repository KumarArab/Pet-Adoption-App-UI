import 'package:PetAdoptionAppUI/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PetDetails extends StatelessWidget {
  final PetInfo petData;
  PetDetails({this.petData});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: _width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Image.asset(
              petData.imageUrl,
              fit: BoxFit.cover,
              height: _width * 0.6,
              width: _width,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  left: _width * 0.1,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              petData.title,
                              style: GoogleFonts.josefinSans(
                                fontSize: _width * 0.065,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              petData.subtitle,
                              style: GoogleFonts.josefinSans(
                                fontSize: _width * 0.045,
                                color: Colors.grey,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.favorite_outline,
                          color: Colors.orange,
                          size: 40,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                    Container(
                      height: _width * 0.2,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Briefs(
                            title: "Age",
                            subtitle: petData.age,
                          ),
                          Briefs(
                            title: "Sex",
                            subtitle: petData.sex,
                          ),
                          Briefs(
                            title: "Color",
                            subtitle: petData.color,
                          ),
                          Briefs(
                            title: "Weight",
                            subtitle: petData.weight,
                          ),
                          Briefs(
                            title: "PO",
                            subtitle: petData.po,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      height: _width * 0.2,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amber.withOpacity(0.3),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/customer.png",
                              height: 50,
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  petData.ownername,
                                  style: GoogleFonts.mukta(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  "Owner",
                                  style: GoogleFonts.mukta(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ]),
                          Spacer(),
                          Text(
                            petData.distance,
                            style: GoogleFonts.mukta(
                              color: Colors.orange,
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        petData.bio,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.mukta(
                          color: Colors.black,
                          height: 1.5,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 20,
                        right: 20,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: _width * 0.15,
                            width: _width * 0.3,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(Icons.save),
                          ),
                          Spacer(),
                          Container(
                            height: _width * 0.15,
                            width: _width * 0.5,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.orange.withOpacity(0.15),
                                    blurRadius: 5,
                                    offset: Offset(5, 5),
                                    spreadRadius: 5,
                                  ),
                                  BoxShadow(
                                    color: Colors.orange.withOpacity(0.15),
                                    blurRadius: 5,
                                    offset: Offset(-5, -5),
                                    spreadRadius: 5,
                                  ),
                                  BoxShadow(
                                    color: Colors.orange.withOpacity(0.15),
                                    blurRadius: 5,
                                    offset: Offset(-5, 5),
                                    spreadRadius: 5,
                                  ),
                                  BoxShadow(
                                    color: Colors.orange.withOpacity(0.15),
                                    blurRadius: 5,
                                    offset: Offset(5, -5),
                                    spreadRadius: 5,
                                  ),
                                ]),
                            child: Text(
                              "ADOPT",
                              style: GoogleFonts.mukta(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                              ),
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
}

class Briefs extends StatelessWidget {
  final String title, subtitle;

  Briefs({this.title, this.subtitle});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: _width * 0.15,
      width: _width * 0.15,
      alignment: Alignment.center,
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.symmetric(
        horizontal: _width * 0.02,
        vertical: _width * 0.03,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.mukta(
              color: Colors.orange,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 2),
          Text(
            subtitle,
            style: GoogleFonts.mukta(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
