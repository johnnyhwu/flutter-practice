import 'package:flutter/material.dart';
import 'package:travel_app/model/hotel_model.dart';


class HotelCarousel extends StatelessWidget {
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
                  "Exclusive Hotels",
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
                itemCount: hotels.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
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
                              height: 120,
                              width: 240,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "${hotels[index].name}",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),

                                    SizedBox(
                                      height: 1,
                                    ),

                                    Text(
                                      "${hotels[index].address}",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey[500],
                                      ),
                                    ),

                                    SizedBox(
                                      height: 1,
                                    ),

                                    Text(
                                      "\$${hotels[index].price}/night",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            top: 5,
                            left: 5,
                            child: Container(
                              height: 190,
                              width: 230,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/${hotels[index].img}"),
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
                        ])),
                  );
                }),
          )
        ],
      ),
    );
  }
}
