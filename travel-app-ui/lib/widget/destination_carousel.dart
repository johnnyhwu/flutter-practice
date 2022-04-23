import 'package:flutter/material.dart';
import 'package:travel_app/model/destination_model.dart';
import 'package:travel_app/Screen/destination_screen.dart';


class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.5),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Top Destinations",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("See All !");
                  },
                  child: Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 5),

          Container(
            padding: EdgeInsets.all(2.5),
            height: 300,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: destinationData.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DestinationScreen(
                                    destinationIndex: index,
                                  )));
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(12, 0, 12, 5),
                      child: Container(
                          width: 240,
                          child: Stack(children: <Widget>[
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white,
                                ),
                                height: 140,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "${destinationData[index].activityModel.length} activities",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "${destinationData[index].description}",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey[500],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Positioned(
                              top: 5,
                              left: 20,
                              child: Stack(
                                children: <Widget>[

                                  Hero(
                                    tag: "$index",
                                    child: Container(
                                      height: 180,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/${destinationData[index].imgName}"),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(18.0),
                                        color: Colors.green,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 6.0,
                                              offset: Offset(0, 5.0))
                                        ],
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    bottom: 5,
                                    left: 5,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            destinationData[index].city,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 25,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Icon(
                                                Icons.near_me,
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                destinationData[index].country,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w400),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ])),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
