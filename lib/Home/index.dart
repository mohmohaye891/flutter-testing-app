import 'package:flutter/material.dart';
import 'package:sales_advertisement/Widget/mygridview.dart';
import 'package:sales_advertisement/detail/detail_page.dart';
import 'package:sales_advertisement/model/item.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({Key key}) : super(key: key);
  final List<Item> _allItems = Item.allItems();

 HomeScreen() {}

 final GlobalKey scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: scaffoldKey,
        appBar: new AppBar(
          title: new Text(
            "Sales",
            style: new TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        body: new Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: getHomeScreenBody(context)));
  }

  getHomeScreenBody(BuildContext context) {
    if(MediaQuery.of(context).orientation == Orientation.portrait)
      return ListView.builder(
        itemCount: _allItems.length,
        itemBuilder: _getListItemUI,
        padding: EdgeInsets.all(0.0),
      );
    else
      return new MyGridView(allItems: _allItems);
  }

  Widget _getListItemUI(BuildContext context, int index,
      {double imgwidth: 50.0}) {
    return new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
            leading: new Image.asset(
                "assets/" + _allItems[index].images,
              fit: BoxFit.fitHeight,
              width: imgwidth,
            ),
              title: new Text(
                _allItems[index].name,
                style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
            subtitle: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text('Price : ${_allItems[index].price}',
                  style: new TextStyle(
                    fontSize: 13.0, fontWeight: FontWeight.normal )),
                new Text('Contact No : ${_allItems[index].phone_no}',
                    style: new TextStyle(
                      fontSize: 11.0, fontWeight: FontWeight.normal)),
              ]),
            onTap: () {
             // _showSnackBar(context, _allItems[index]);
              Navigator.push(context, new MaterialPageRoute(builder:
              (BuildContext cotext) => new DetailPage()));
            },
          )
        ],
      ),
    );
  }

   _showSnackBar(BuildContext context, Item allItem) {
    final SnackBar objSnackbar = new SnackBar(
        content: new Text("${allItem.name}"),
        backgroundColor: Colors.amber,
        );
        Scaffold.of(context).showSnackBar(objSnackbar);
   }

}
