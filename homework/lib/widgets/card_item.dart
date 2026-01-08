import 'package:flutter/material.dart';
import 'package:homework/models/item_model.dart';
import 'package:homework/widgets/sale.dart';
import 'package:homework/widgets/stars.dart';
import 'package:homework/widgets/text_view.dart';

class CardItem extends StatefulWidget {

  final ItemModel itemModel;

  const CardItem({super.key,
  required this.itemModel});

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  late bool isFavourite = widget.itemModel.isFavourite;
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    void _setFavourite() {
      setState(() {
        isFavourite = !isFavourite;
      });
    }

    void _increase() {
      setState(() {
        _quantity++;
      });
    }

    void _decrease() {
      setState(() {
        if (_quantity == 1) {
          return;
        } else {
          _quantity--;
        }
      });
    }

    void _addToCart() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text("В корзину добавлено $_quantity товаров")
        ),
      );

      setState(() {
        _quantity = 1;
      });
    }

    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            spreadRadius: 2,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: .stretch,
        children: [
          Stack(
            alignment: .center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Image.network(
                  widget.itemModel.imageUrl,
                  height: 150.0,
                ),
              ),
              Positioned(
                  top: -10.0,
                  left: 0.0,
                  right: 0.0,
                  child: Row(
                    mainAxisSize: .max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      switch(widget.itemModel.sale) {
                        true => SaleTuple(),
                        false => SizedBox(),
                      },
                      IconButton(
                        onPressed: _setFavourite,
                        icon: Icon(
                            switch(isFavourite) {
                              true => Icons.favorite,
                              false => Icons.favorite_border
                            }
                        ),
                        color: switch(isFavourite) {
                          true => Colors.red,
                          false => Colors.grey
                        },
                      )
                    ],
                  )
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          TextView(
            input: widget.itemModel.name,
            textSize: 16.0,
            bold: true,
          ),
          SizedBox(
            height: 5.0,
          ),
          Stars(amount: widget.itemModel.rating),
          SizedBox(
            height: 5.0,
          ),
          Text(
            widget.itemModel.desc,
            maxLines: 2,
            style: TextStyle(
                color: Colors.grey,
                fontSize: 13.0
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: .start,
            children: [
              TextView(
                input: switch(widget.itemModel.sale) {
                  true => "\$${widget.itemModel.salePrice}",
                  false => "\$${widget.itemModel.price}"
                },
                textColor: Colors.blueAccent,
                textSize: 22.0,
                bold: true,
              ),
              SizedBox(
                width: 5.0,
              ),
              switch(widget.itemModel.sale) {
                true =>
                    Text(
                      "\$${widget.itemModel.price}",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          decoration: .lineThrough
                      ),
                    ),
                false => SizedBox(),
              },
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisSize: .max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 120.0,
                padding: EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    border: Border.all(
                        color: Colors.grey,
                        width: 1.0
                    )
                ),
                child: Row(
                  mainAxisSize: .max,
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    IconButton(
                      onPressed: _decrease,
                      icon: Icon(Icons.remove),
                      iconSize: 20.0,
                    ),
                    TextView(
                      input: "$_quantity",
                      textSize: 17.0,
                    ),
                    IconButton(
                      onPressed: _increase,
                      icon: Icon(Icons.add),
                      iconSize: 20.0,
                    )
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: _addToCart,
                  child: TextView(
                    input: "В корзину",
                    textSize: 16.0,
                    textColor: Colors.deepPurple,
                    bold: true,
                  )
              )
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          TextButton(
              onPressed: () {
                print("Подробное описание");
              },
              child: TextView(
                input: "Подробнее",
                textSize: 16.0,
                textColor: Colors.deepPurple,
                bold: true,
              )
          ),
        ],
      ),
    );
  }
}
