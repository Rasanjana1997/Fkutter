import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:application1/db/tiledata.dart';
import 'package:application1/db/cart_model.dart';

class StuffInTiles extends StatelessWidget {
  final MyTile myTile;
  StuffInTiles(this.myTile);

  @override
  Widget build(BuildContext context) {
    return _buildTiles(myTile);
  }

  Widget _buildTiles(MyTile t) {
    if (t.children.isEmpty)
      return new ListTile(
          dense: true,
          enabled: true,
          isThreeLine: false,
          onLongPress: () => print("long press"),
          onTap: () => print("tap"),
          leading: new Text(t.id),
          selected: true,
          trailing: _AddButton(item: t),
          title: new Text(t.title));

    return Card(
      child: new ExpansionTile(
        key: new PageStorageKey<int>(3),
        title: new Text(t.title),
        children: t.children.map(_buildTiles).toList(),
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  final MyTile item;

  const _AddButton({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<CartModel>(context);

    return FlatButton(
      onPressed: cart.itemIds.contains(item.id) ? null : () => cart.add(item.id),
      onLongPress: () => print(cart.itemIds.length),
      splashColor: Theme.of(context).primaryColor,
      child: cart.itemIds.contains(item.id)
          ? Icon(Icons.check, semanticLabel: 'ADDED')
          : Text('ADD'),
    );
  }
}



