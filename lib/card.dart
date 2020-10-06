import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  
  Widget _buildBody(BuildContext context) {
    return Center(
        child: Card(
            shadowColor: Colors.black,
            child: Container(
                width: 280,
                height: 170,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5)),
                child: Row(children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                              color: Colors.grey)),
                  Flexible(flex: 3, child: _buildColumn(context))
                ]))));
  }

  Widget _buildColumn(BuildContext context) {
    var theme = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Text("Title", style: theme.headline6),
      SizedBox(height: 8),
      Text("Subtitle", style: theme.subtitle1),
      SizedBox(height: 8),
      _buildItemPairRow(theme),
      SizedBox(height: 8),
      _buildUserNameWithPhoto(theme),
      SizedBox(height: 8),
      Align(
        alignment: Alignment.centerRight,
        child: Text("new price", style: theme.caption.apply(decoration: TextDecoration.lineThrough))
      ),
      SizedBox(height: 8),
      _buildRatingItemPair(theme)
    ]));
  }

  Widget _buildItemPairRow(TextTheme theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Item key 1:", style: theme.bodyText1),
      Text("Item value 1", style: theme.bodyText1),
      ],
    );
  }

  Widget _buildRatingItemPair(TextTheme theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Rating:", style: theme.subtitle2),
      Text("Old price", style: theme.bodyText1),
      ],
    );
  }

  Widget _buildUserNameWithPhoto(TextTheme theme) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle
          ),
        ),
        SizedBox(width: 8),
        Text("User name", style: theme.caption)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildBody(context));
  }

}
