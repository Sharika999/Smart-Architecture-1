import 'package:flutter/material.dart';
import 'package:smart_architecture/home/screens/base_screen.dart';

void main() {
  runApp(mat());
}

class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

class mat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductsPage(),
    );
  }
}

class ProductsPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Dining Table Set',
      description: 'A beautiful dining table set for your home.',
      price: 299.99,
      imageUrl: 'https://example.com/dining_table.jpg',
    ),
    Product(
      name: 'Sofa Set',
      description: 'Comfortable sofa set for your living room.',
      price: 499.99,
      imageUrl: 'https://example.com/sofa_set.jpg',
    ),
    Product(
      name: 'Bed',
      description: 'Cozy bed for a good night\'s sleep.',
      price: 599.99,
      imageUrl: 'https://example.com/bed.jpg',
    ),
    Product(
      name: 'Furniture',
      description: 'Various furniture items for your home.',
      price: 199.99,
      imageUrl: 'https://example.com/furniture.jpg',
    ),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading:
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const BaseScreen(),
                ),
              );
            },
          ),
        
          title: Text('Materials and Products',style: TextStyle(color: Colors.white),),
          backgroundColor:
            const Color.fromARGB(255, 58, 57, 57),
          centerTitle: true,
          
        ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(products[index].imageUrl),
            title: Text(products[index].name),
            subtitle: Text(products[index].description),
            trailing: Text('\$${products[index].price.toStringAsFixed(2)}'),
            onTap: () {
              // Handle product tap
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(products[index].name),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(products[index].description),
                        SizedBox(height: 10),
                        Text(
                          'Price: \$${products[index].price.toStringAsFixed(2)}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
