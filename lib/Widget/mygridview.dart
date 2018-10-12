import 'package:flutter/material.dart';
import 'package:sales_advertisement/model/item.dart';

class MyGridView extends StatelessWidget {
  final List<Item> allItems;
  MyGridView({Key key, this.allItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return GridView.count(
     crossAxisCount: 3,
     padding: EdgeInsets.all(16.0),
     childAspectRatio: 8.0 / 9.0,
     children: _getGridViewItems(context),
   );
  }

  _getGridViewItems(BuildContext context) {
    List<Widget> allWidgets = new List<Widget>();
    for (int i = 0; i < allItems.length; i++) {
      var widget = _getGridItemUI(context, allItems[i]);
      allWidgets.add(widget);
    };
    return allWidgets;
  }

  _getGridItemUI(BuildContext context, Item item) {
    return new InkWell(
      onTap: () {
        _showSnackBar(context, item);
      },
    child: new Card(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Image.asset(
            "assets/" + item.images,
            fit: BoxFit.fill,
            height: 10.0,
          ),
          new Expanded(
            child: new Center(
              child: new Column(
                children: <Widget>[
                  new SizedBox(height: 8.0),
                  new Text(
                    item.name,
                    style: new TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      elevation: 2.0,
      margin: EdgeInsets.all(5.0),
    ));
  }

  void _showSnackBar(BuildContext context, item) {
    final SnackBar objSnackbar = new SnackBar(
      content: new Text("${item.name}"),
      backgroundColor: Colors.amber,
    );

    Scaffold.of(context).showSnackBar(objSnackbar);

  }
}
