// immutable calss 
// data dalega constructor ke through


// static can be used directly using catalog models 
class catalogmodels{
  static final items = [
    Item(
    id: 001, 
    name: "iphone 12 pro", 
    desc: "brand new application", 
    price: 999, 
    color: "#33505a", 
    image: "https://cdn.dxomark.com/wp-content/uploads/medias/post-66428/iphone-12-pro-max-graphite-hero-1.jpg"
    )


];

}
class Item
{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;
  

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

// Item(this.id,this.name,this.desc,this.price,this.color, );

// final product = [
//   Item(
//     id : "mayank",
//     name : "iphone 14 pro",
//     e
//     , name, desc, price, color)
// ]
// }



