class Item {

  // --- Name of category
  final String name;
  //--image
  final String images;
  //-- prices
  final String price;
  //--contact no
  final String phone_no;


const  Item({this.name, this.images, this.phone_no, this.price});
  
  static List<Item> allItems()
  {
    var lstOfItems = new List<Item>();
    lstOfItems.add(new Item(name: "Watch", images: "watch.jpg", phone_no: "09784751233", price: "90000"));
    lstOfItems.add(new Item(name: "Coffee Maker", images: "coffeemaker.jpg", phone_no: "09784751233", price: "90000"));
    lstOfItems.add(new Item(name: "Bag", images: "bag.jpg", phone_no: "09784751233", price: "100000"));
    lstOfItems.add(new Item(name: "Labtop", images: "labtop.jpg", phone_no: "09784751233", price: "500000"));
    lstOfItems.add(new Item(name: "Shoe", images: "shoe.jpg", phone_no: "09784751233", price: "100000"));
    lstOfItems.add(new Item(name: "Phone", images: "phone.jpg", phone_no: "09784751233", price: "300000"));
    lstOfItems.add(new Item(name: "Rice Cooker", images: "ricecooker.jpg", phone_no: "09784751233", price: "68000"));
    lstOfItems.add(new Item(name: "Cleaner", images: "cleaner.jpg", phone_no: "09784751233", price: "40000"));
    return lstOfItems;
  }

}
/*

List<Item> items = [
  const Item( name: "Watch",images: "watch.jpg", phone_no: "09784751233", price: "90000" ),
  const Item(name: "Coffee Maker", images: "coffeemaker.jpg", phone_no: "09784751233", price: "90000"),
  const Item(name: "Bag", images: "bag.jpg", phone_no: "09784751233", price: "100000"),
  const Item(name: "Labtop", images: "labtop.jpg", phone_no: "09784751233", price: "500000"),
  const Item(name: "Shoe", images: "shoe.jpg", phone_no: "09784751233", price: "100000"),
  const Item(name: "Phone", images: "phone.jpg", phone_no: "09784751233", price: "300000"),
  const Item(name: "Rice Cooker", images: "ricecooker.jpg", phone_no: "09784751233", price: "68000"),
  const Item(name: "Cleaner", images: "cleaner.jpg", phone_no: "09784751233", price: "40000"),
];*/
