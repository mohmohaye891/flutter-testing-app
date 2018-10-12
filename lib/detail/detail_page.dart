import 'package:flutter/material.dart';
import 'package:sales_advertisement/Home/index.dart';
import 'package:sales_advertisement/Login/text_style.dart';
import 'package:sales_advertisement/model/item.dart';

class DetailPage extends StatelessWidget {

  final List<Item> _allItems = Item.allItems();

  // final Item item;

  DetailPage();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        constraints: new BoxConstraints.expand(),
        color: new Color(0xFF736AB7),
        child: new Stack(
          children: <Widget>[
            // _getBackground(),
             _getGradient(),
            // _getContent(),
            _getToolbar(context),
          ],
        ),
      ),
    );
  }

/*  Widget _getBackground() {
    return new Container(
      child: new Image.network(_allItems[index].images,
      fit: BoxFit.cover,
       height: 300.0,
      ),
      constraints: new BoxConstraints.expand(height: 295.0),
    );
  }*/

  Container _getGradient() {
    return new Container(
      margin: new EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: <Color> [
            new Color(0x00736AB7),
            new Color(0xFF736AB7)
          ],
          stops: [0.0, 0.9],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0),
        ),
      ),
    );
  }

  Widget _getContent(BuildContext context, int index,
      {double imgwidth: 50.0}) {
    final _overviewTitle = "Overview".toUpperCase();
    return new Container(
      child: new ListView(
        padding: new EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
        children: <Widget>[
          new HomeScreen(),
          new Container(
            padding: new EdgeInsets.symmetric(horizontal: 32.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(_overviewTitle,
                  style: Style.headerTextStyle,),
                new Text(
                    _allItems[index].name, style: Style.commonTextStyle),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _getToolbar(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.only(
          top: MediaQuery
              .of(context)
              .padding
              .top),
      child: new BackButton(color: Colors.white,),
    );
  }

}