class HotelModel
{
  String img;
  String name;
  String address;
  String price;

  HotelModel({this.img, this.name, this.address, this.price});
}

List<HotelModel> hotels = [
  HotelModel(
    img: "hotel0.jpg",
    name: "Cathy Hotel",
    address: "George Street",
    price: "5000",
  ),
  HotelModel(
    img: "hotel1.jpg",
    name: "Prince Hotel",
    address: "Sun Road",
    price: "2500",
  ),
  HotelModel(
    img: "hotel2.jpg",
    name: "Johnny Castel",
    address: "Johnny Street",
    price: "6000",
  )
];