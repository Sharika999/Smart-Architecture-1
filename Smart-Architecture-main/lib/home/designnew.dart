import 'package:flutter/material.dart';
import 'package:smart_architecture/home/screens/base_screen.dart';

void main() {
  runApp(des());
}

class des extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DesignStudio(),
    );
  }
}

class DesignStudio extends StatefulWidget {
  @override
  _DesignStudioState createState() => _DesignStudioState();
}

class _DesignStudioState extends State<DesignStudio> {
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();

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
        
          title: Text('Design',style: TextStyle(color: Colors.white),),
          backgroundColor:
            const Color.fromARGB(255, 58, 57, 57),
          centerTitle: true,
          
        ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Personalize Your Own Design:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            TextFormField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Price'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                String name = nameController.text;
                String description = descriptionController.text;
                double price = double.tryParse(priceController.text) ?? 0.0;

                if (name.isNotEmpty && description.isNotEmpty && price > 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateDesignPage(
                        name: name,
                        description: description,
                        price: price,
                      ),
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Error'),
                        content: Text('Please fill in all fields.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('Create Design'),
            ),
          ],
        ),
      ),
    );
  }
}

class CreateDesignPage extends StatefulWidget {
  final String name;
  final String description;
  final double price;

  const CreateDesignPage({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  _CreateDesignPageState createState() => _CreateDesignPageState();
}

class _CreateDesignPageState extends State<CreateDesignPage> {
  Color _selectedColor = Colors.white; // Initially white
  final List<Color> _colors = const [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.pink,
    Colors.brown,
    Colors.grey,
  ];

  void _selectColor(Color color) {
    setState(() {
      _selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Design'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name: ${widget.name}',
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  'Description: ${widget.description}',
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  'Price: ${widget.price}',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(16.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: _colors.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    _selectColor(_colors[index]);
                  },
                  child: Container(
                    color: _colors[index],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              'Photo Frame', // Placeholder for photo frame
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Implement browse option
                },
                child: Text('Browse'),
              ),
              SizedBox(width: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Implement save option
                },
                child: Text('Save Design'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}