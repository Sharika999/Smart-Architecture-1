import 'dart:io';

class ArtPiece {
  String name;
  String description;
  double price;

  ArtPiece(this.name, this.description, this.price);
}

void main() {
  print("Welcome to the Art Piece Design Studio!");

  while (true) {
    print("\nWhat would you like to do?");
    print("1. Browse Design Recommendations");
    print("2. Personalize Your Own Design");
    print("3. Sell Your Designs");
    print("4. Exit");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        browseDesignRecommendations();
        break;
      case "2":
        personalizeDesign();
        break;
      case "3":
        sellDesigns();
        break;
      case "4":
        exit(0);
        break;
      default:
        print("Invalid option. Please choose again.");
    }
  }
}

void browseDesignRecommendations() {
  print("\nDesign Recommendations:");
  // Sample art pieces with name, description, and price
  var recommendations = [
    ArtPiece("Abstract Painting", "Vibrant abstract painting", 100),
    ArtPiece("Sculpture", "Elegant marble sculpture", 150),
    ArtPiece("Digital Artwork", "Futuristic digital artwork", 80),
  ];

  // Display recommendations to the user
  for (var i = 0; i < recommendations.length; i++) {
    print("${i + 1}. ${recommendations[i].name}: ${recommendations[i].description} - \$${recommendations[i].price}");
  }
}

void personalizeDesign() {
  print("\nPersonalize Your Own Design:");
  print("Enter the name of your art piece:");
  String? name = stdin.readLineSync();
  print("Enter description:");
  String? description = stdin.readLineSync();
  print("Enter price:");
  double? price = double.tryParse(stdin.readLineSync() ?? '');

  if (name != null && description != null && price != null) {
    // Create a new personalized art piece
    var personalizedPiece = ArtPiece(name, description, price);
    print("Your personalized art piece has been created:");
    print("Name: ${personalizedPiece.name}");
    print("Description: ${personalizedPiece.description}");
    print("Price: \$${personalizedPiece.price}");
  } else {
    print("Invalid input. Please try again.");
  }
}

void sellDesigns() {
  print("\nSell Your Designs:");
  // Add code here to implement selling functionality
  print("Feature under development.");
}

































































































































    