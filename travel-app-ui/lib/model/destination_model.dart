import 'package:travel_app/model/activity_model.dart';

class DestinationModel
{
  String imgName;
  String city;
  String country;
  List<ActivityModel> activityModel;
  String description;

  DestinationModel({this.imgName, this.city, this.country, this.activityModel, this.description});
}

List<DestinationModel> destinationData = [
  DestinationModel(
    imgName: "destination_newdelhi.jpg",
    city: "New Delhi",
    country: "India",
    activityModel: activityDate,
    description: "An urban located in the city of Delhi.",
  ),

  DestinationModel(
    imgName: "destination_newyork.jpg",
    city: "New York",
    country: "America",
    activityModel: activityDate,
    description: "The most populous city in the USA",
  ),

  DestinationModel(
    imgName: "destination_paris.jpg",
    city: "Paris",
    country: "France",
    activityModel: activityDate,
    description: "Paris is the capital of France",
  ),

  DestinationModel(
      imgName: "destination_stmarksbasilica.jpg",
      city: "Venice",
      country: "Italy",
      activityModel: activityDate,
      description: "St Mark's Basilica is the cathedral church."
  ),

  DestinationModel(
      imgName: "destination_venice.jpg",
      city: "Venice",
      country: "Italy",
      activityModel: activityDate,
      description: "Venice is a city in northeastern Italy.",
  ),
];

