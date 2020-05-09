import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Item {
  String id;
  String name;
  String description;
  int price;
  bool inStock;
  String imageUrl;

  Item(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.inStock,
      this.imageUrl});

  String get formattedAvailability => inStock ? "Available" : "Out of stock";
  String get formattedPrice => Item.formatter.format(this.price);
  Color get availabilityColor => inStock ? Colors.grey : Colors.red;

  static final formatter =
      NumberFormat.currency(locale: 'en_US', symbol: "\$");

  static List<Item> get dummyItems => [
        Item(
            id: "1",
            name: "HP OMEN X 2S",
            description: 'OMEN X 2S by HP 2019 15-inch Gaming Laptop With Secondary Touchscreen Display, Intel i7-9750H, NVIDIA RTX 2070 With Max-Q 8 GB, 16 GB RAM, 512 GB SSD, VR/MR Ready, Windows 10 Home (15-dg0010nr, Black).',
            price: 1898,
            inStock: true,
            imageUrl:
                'https://images-na.ssl-images-amazon.com/images/I/715-zfPfltL._AC_SL1500_.jpg'),
        Item(
            id: "2",
            name: "HP EliteBook W4Z96AW",
            description: 'HP EliteBook W4Z96AW Laptop (Windows 10 Pro, Intel Core I5-6300U, 14" LED Screen, Storage: 32 GB, RAM: 8 GB) Silver.',
            price: 2131,
            inStock: true,
            imageUrl:
                'https://images-na.ssl-images-amazon.com/images/I/816ZrbuR4oL._AC_SL1500_.jpg'),
        Item(
            id: "3",
            name: "HP 3YE08UT#ABA Promo ZB14uG5",
            description: 'HP 3YE08UT#ABA Promo ZB14uG5 Intel i7-8550U 4 GHz Laptop, 8 GB RAM, Windows 10 Pro.',
            price: 1779,
            inStock: true,
            imageUrl:
                'https://images-na.ssl-images-amazon.com/images/I/81OXqnO5zzL._AC_SL1500_.jpg'),
        Item(
            id: "4",
            name: "HP Elitebook 745 G5 Laptop PC",
            description: 'HP Elitebook 745 G5 Laptop PC with AMD Ryzen 7 2700U Quad Core CPU, 16GB DDR4 RAM, 512GB NVMe SSD, 14 Inch FHD Touchscreen Display, Windows 10 Pro, (Laptop, 16GB RAM, 512GB SSD).',
            price: 1333,
            inStock: true,
            imageUrl:
                'https://images-na.ssl-images-amazon.com/images/I/61MbiFIvilL._AC_SL1000_.jpg'),
        Item(
            id: "5",
            name: "Samsung 2018 Galaxy Book 12",
            description: 'Samsung 2018 Galaxy Book 12" FHD+ 2-in-1 Touchscreen Laptop, Intel Core i5-7200U up to 3.1GHz 8GB RAM 256GB SSD Bluetooth 4.1 USB Type-C Win 10 Pro.',
            price: 1999,
            inStock: true,
            imageUrl:
                'https://images-na.ssl-images-amazon.com/images/I/51iv5CbxpKL._AC_SL1000_.jpg'),
        Item(
            id: "6",
            name: "Samsung Notebook Odyssey Z",
            description: 'Samsung Notebook Odyssey Z 15.6” – Laptop – Intel i7 – 16GB Memory – 256GB SSD – Light Titan.',
            price: 1630,
            inStock: false,
            imageUrl:
                'https://images-na.ssl-images-amazon.com/images/I/61UEhJO5UXL._AC_SL1000_.jpg'),
      ];
}