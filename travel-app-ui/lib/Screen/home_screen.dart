import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/widget/destination_carousel.dart';
import 'package:travel_app/widget/hotel_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<IconData> iconTabList = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.fly,
    FontAwesomeIcons.biking,
  ];

  int iconTabSelectedIdx = 0;
  int navBarIdx = 0;

  Widget iconBuilder(entry)
  {
    return GestureDetector(
      onTap: () {
        setState(() {
          iconTabSelectedIdx = entry.key;
        });
      },

      child: Container(
        width: 58,
        height: 58,

        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: (entry.key == iconTabSelectedIdx)? Theme.of(context).accentColor:Colors.grey,
        ),

        child: Icon(
          entry.value,
          color: (entry.key == iconTabSelectedIdx)? Theme.of(context).primaryColor:Colors.grey[900],
          size: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 60, 10, 0),
                child: Text(
                  "What you would like to find?",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: iconTabList.asMap().entries.map(iconBuilder).toList(),
              ),

              SizedBox(height: 35),

              DestinationCarousel(),

              SizedBox(height: 30),

              HotelCarousel(),

            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navBarIdx,
        onTap: (int index){
          setState(() {
            navBarIdx = index;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_pizza,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_circle_filled,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
        ],

      ),
      
    );
  }
}
