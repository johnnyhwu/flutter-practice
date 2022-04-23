import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/model/destination_model.dart';
import 'package:travel_app/model/activity_model.dart';

class DestinationScreen extends StatefulWidget {

  final int destinationIndex;
  DestinationScreen({this.destinationIndex});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {

  List<ActivityModel> activities;

  List<Widget> starList(int rating)
  {
    List<Widget> starlist = [];
    for(int i=0; i<rating; i++){
      starlist.add(Icon(
        Icons.star,
        size: 15,
        color: Colors.yellow[500],
      ));
    }

    return starlist;
  }

  @override
  void initState() {
    super.initState();
    activities = destinationData[widget.destinationIndex].activityModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: "${widget.destinationIndex}",
                child: Container(
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/${destinationData[widget.destinationIndex].imgName}"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      iconSize: 28,
                      color: Colors.black,
                    ),

                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          iconSize: 28,
                          color: Colors.black,
                        ),

                        IconButton(
                          icon: Icon(Icons.list),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          iconSize: 28,
                          color: Colors.black,
                        ),

                      ],
                    )
                  ],
                ),
              ),

              Positioned(
                left: 20,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "${destinationData[widget.destinationIndex].city}",
                      style: TextStyle(
                        fontSize: 38,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.near_me,
                              size: 25,
                              color: Colors.white,
                            ),

                            SizedBox(width: 15),

                            Text(
                              "${destinationData[widget.destinationIndex].country}",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),

          Container(
            height: 546,

            child: ListView.builder(
              padding: EdgeInsets.all(0.0),
              itemCount: activities.length,
              itemBuilder: (context, index){
                return Padding(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: Container(
                    height: 180,
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          left: 40,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),

                        Positioned(
                          top: 9,
                          child: Container(
                            width: 145,
                            height: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/${activities[index].imgName}"),
                                fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.circular(18.0),

                            ),
                          ),
                        ),

                        Positioned.fill(
                          left: 155,
                          child: Container(
                            color: Colors.transparent,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "${activities[index].activityName}",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),

                                          SizedBox(height: 5),

                                          Text(
                                            "${activities[index].activityClass}",
                                            style: TextStyle(
                                              color: Colors.grey[400],
                                              fontWeight: FontWeight.w300,
                                              fontSize: 16,
                                            ),
                                          )
                                        ],
                                      ),

                                      SizedBox(
                                        width: 18,
                                      ),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            "\$${activities[index].price}",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),

                                          Text(
                                            "per pax",
                                            style: TextStyle(
                                              color: Colors.grey[400],
                                              fontWeight: FontWeight.w300,
                                              fontSize: 16,
                                            ),
                                          ),

                                          SizedBox(
                                            height: 28,
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),

                                  SizedBox(
                                    height: 5,
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: starList(activities[index].rating),
                                  ),

                                  SizedBox(
                                    height: 18,
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        width: 80,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[50],
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),

                                        child: Center(
                                          child: Text(
                                            "${activities[index].startTime[0]}:00 am",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(
                                        width: 15,
                                      ),

                                      Container(
                                        width: 80,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[50],
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),

                                        child: Center(
                                          child: Text(
                                            "${activities[index].startTime[1]}:00 am",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )


                                ],
                              ),
                            ),
                          ),
                        )

                      ],
                    )
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
