import 'package:flutter/material.dart';
import 'package:homework/models/item_model.dart';
import 'package:homework/widgets/card_item.dart';
import 'package:homework/widgets/text_view.dart';

class CardPage extends StatelessWidget {


  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ItemModel> list = [
      ItemModel(
        name: 'Marshall Major IV Bluetooth Headphones',
        desc: 'High-quality wireless Bluetooth headphones with rich sound and long battery life.',
        imageUrl: 'https://imgproxy.onliner.by/QEZmsm_H7b8NAyIrGsvibUGYJzGc-d-FQZ06gnilyDA/w:170/h:250/z:2/f:jpg/aHR0cHM6Ly9jb250/ZW50Lm9ubGluZXIu/YnkvY2F0YWxvZy9k/ZXZpY2Uvb3JpZ2lu/YWwvY2FlNzJkYWZm/NzZhZDc0YzdhMjlj/MmY2NGJjYThiYTIu/anBlZw',
        rating: 4.6,
        price: 58.00,
        isFavourite: false,
        sale: true,
        salePrice: 48.00
      ),
      ItemModel(
        name: 'Apple Watch Ultra 3',
        desc: 'Premium smartwatch with advanced features, built-in GPS and fitness tracking.',
        imageUrl: 'https://imgproxy.onliner.by/z6SjWHpLpsPz3szej0eewsyGzxNfxgEiVlhNvmg30XA/w:170/h:250/z:2/f:jpg/aHR0cHM6Ly9jb250/ZW50Lm9ubGluZXIu/YnkvY2F0YWxvZy9k/ZXZpY2Uvb3JpZ2lu/YWwvNzdiMTEzZmMz/MDJiMDJiNjNhYzYz/MzRmN2JjODJjY2Eu/anBn',
        rating: 3.8,
        price: 999.00,
        isFavourite: true,
        sale: false,
      )
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextView(input: "Карточка товара"),
      ),
      body: Center(
          child: ListView.separated(
            padding: EdgeInsets.all(15.0),
              itemBuilder: (context, index) => CardItem(itemModel: list[index]),
              separatorBuilder: (context, index) =>
              const SizedBox(height: 15.0),
              itemCount: list.length)
      ),
    );
  }
}
