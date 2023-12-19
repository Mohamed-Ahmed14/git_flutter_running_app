class Withdrwal{
  String? image;
  String? type;

  Withdrwal({this.image,this.type});
}

List<Withdrwal> withdrwalList=[
  Withdrwal(

    image: "assets/images/bank.png",
    type: "Bank Account",
  ),
  Withdrwal(
    image: "assets/images/card.png",
    type: "Card",
  ),
];