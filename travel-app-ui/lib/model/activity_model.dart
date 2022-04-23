class ActivityModel
{
  String imgName;
  String activityName;
  String activityClass;
  int rating;
  List<int> startTime;
  String price;

  ActivityModel({this.imgName, this.activityName, this.activityClass, this.rating, this.startTime, this.price});
}

List<ActivityModel> activityDate = [
  ActivityModel(
    imgName: "activity_gondola.jpg",
    activityName: "Walking Tour \nGondola Ride",
    activityClass: "Sightseeing Tour",
    rating: 5,
    startTime: [7, 11],
    price: "210",
  ),

  ActivityModel(
    imgName: "activity_murano.jpg",
    activityName: "Murano and \nBurano Tour",
    activityClass: "Sightseeing Tour",
    rating: 4,
    startTime: [9, 10],
    price: "150",
  ),

  ActivityModel(
    imgName: "activity_santorini.jpg",
    activityName: "Immensed in \nView",
    activityClass: "Sightseeing Tour",
    rating: 5,
    startTime: [8, 11],
    price: "300",
  ),

  ActivityModel(
    imgName: "activity_saopaulo.jpg",
    activityName: "City with \nTechnology",
    activityClass: "Sightseeing Tour",
    rating: 3,
    startTime: [8, 10],
    price: "150",
  ),
];