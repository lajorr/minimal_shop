// ignore_for_file: public_member_api_docs, sort_constructors_first
class Item {
  final String title;
  final String image;
  final String desc;
  final double price;
  final int id;
  Item({
    required this.title,
    required this.image,
     this.desc = 'Item Description ...',
    required this.price,
    required this.id,
  });
}
