import 'package:flutter/material.dart';
import 'food_item.dart';

class FoodDetailPage extends StatefulWidget {
  final FoodItem foodItem;

  FoodDetailPage({required this.foodItem});

  @override
  _FoodDetailPageState createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  int mozzarellaCount = 0;
  int extraCheeseCount = 0;
  int avocadoCount = 0;
  int baconCount = 0;
  int olivesCount = 0;
  int chickenCount = 0;
  int meatballsCount = 0;
  int sausagesCount = 0;
  int onionCount = 0;
  int tomatoesCount = 0;
  int parmesanCount = 0;
  int pepperoniCount = 0;
  int mushroomCount = 0;
  int ranchsauceCount = 0;
  int bbqsauceCount = 0;
  int tomatosauceCount = 0;
  int grilledbeefCount = 0;
  int lettuceCount = 0;
  int mayonnaiseCount = 0;
  int thousandislandsauceCount = 0;
  int mustardCount = 0;
  int caramelizedonionsCount = 0;
  int halfgrilledchickenCount = 0;
  int quartergrilledchickenCount = 0;
  int grilledchickenCount = 0;
  int halffriedchickenCount = 0;
  int quarterfriedchickenCount = 0;
  int friedchickenCount = 0;
  int grilledchickenspicyCount = 0;
  int friedchickenspicyCount = 0;
  int riceCount = 0;
  int mashedpotatoesCount = 0;
  int frenchfriesCount = 0;
  int sautevegetablesCount = 0;
  int grilledsteakCount = 0;
  int caramelizedonionsteakCount = 0;
  int spicysteakCount = 0;
  int garlicbuttersauceCount = 0;
  int smokedhamCount = 0;
  int honeyglazedhamCount = 0;
  int spicyhamCount = 0;
  int bolognesepastaCount = 0;
  int lasagnapastaCount = 0;
  int fettuccinealfredopastaCount = 0;
  int pestosauceCount = 0;
  int redsauceCount = 0;
  int whitecreamysauceCount = 0;
  int spaghettipastaCount = 0;
  int shrimpsCount = 0;
  int fetacheeseCount = 0;
  int bakedbreadCount = 0;
  int sweetcornCount = 0;
  int cucumberCount = 0;
  int carrotCount = 0;
  int caesardressingCount = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.foodItem.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.foodItem.imageUrl,
                height: 200,
                width: 400,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                widget.foodItem.description,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Text(
                'Available Variants:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              ..._getVariants(widget.foodItem),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _getVariants(FoodItem foodItem) {
    switch (foodItem.name) {
      case 'Pizza':
        return [
          _foodVariantCard('Margherita Pizza', 'Classic Margherita with fresh mozzarella and basil', 9.99, 'assets/margherita pizza.png'),
          _foodVariantCard('Pepperoni Pizza', 'Loaded with spicy pepperoni and mozzarella cheese', 10.99, 'assets/pepperoni pizza.png'),
          _foodVariantCard('Chicken Ranch Pizza', 'Topped with delicious flavors of barbecue, chicken and Ranch dressing', 13.2, 'assets/chicken ranch pizza.png'),
          _buildCustomPlateSection(items: ['Mozzarella', 'Extra Cheese', 'Avocado', 'Bacon', 'Olives', 'Chicken','Meatballs', 'Sausages', 'Onion', 'Tomatoes', 'Parmesan', 'Pepperoni', 'Mushroom', 'Ranch Sauce', 'BBQ Sauce', 'Tomato Sauce']),
        ];
      case 'Burger':
        return [
          _foodVariantCard('Cheeseburger', 'Juicy beef patty with cheese', 8.99, 'assets/cheeseburger.png'),
          _foodVariantCard('Veggie Burger', 'Healthy veggie patty with fresh toppings', 7.99, 'assets/veggie burger.png'),
          _foodVariantCard('BBQ Burger', 'BBQ sauce with crispy onion rings', 9.49, 'assets/bbq burger.png'),
          _buildCustomPlateSection(items: ['Mozzarella', 'Extra Cheese', 'Grilled Beef', 'Bacon', 'Lettuce', 'Onion', 'Mayonnaise', 'Tomatoes', 'Ranch Sauce', 'BBQ Sauce', 'Thousand island Sauce', 'Mustard', 'Caramelized Onions']),
        ];
      case 'Chicken':
        return [
          _foodVariantCard('Grilled Chicken', 'Seasoned grilled chicken breast', 10.99, 'assets/grilled chicken.png'),
          _foodVariantCard('Fried Chicken', 'Crispy fried chicken pieces', 9.99, 'assets/fried chicken.png'),
          _foodVariantCard('Spicy Chicken', 'Spicy marinated chicken wings', 11.49, 'assets/spicy chicken.png'),
          _buildCustomPlateSection(items: ['Half Grilled Chicken', 'Quarter Grilled Chicken', 'Grilled Chicken', 'Half Fried Chicken', 'Quarter Fried Chicken', 'Fried Chicken', 'Grilled Chicken Spicy', 'Fried Chicken Spicy', 'Rice', 'Mashed Potatoes', 'French Fries', 'Saute Vegetables']),
        ];
      case 'Meat':
        return [
          _foodVariantCard('Ribeye Steak', 'Tender ribeye steak grilled to perfection', 15.99, 'assets/ribeye steak.png'),
          _foodVariantCard('Filet Mignon', 'Luxury filet mignon with garlic butter', 19.99, 'assets/filet mignon.png'),
          _foodVariantCard('Sirloin Steak', 'Savory sirloin steak served with sauce', 14.99, 'assets/sirloin steak.png'),
          _foodVariantCard('Smoked Ham', 'Deliciously smoked ham with a savory flavor', 12.99, 'assets/smoked ham.png'),
          _foodVariantCard('Honey Glazed Ham', 'Sweet honey glazed ham', 13.99, 'assets/honey glazed ham.png'),
          _buildCustomPlateSection(items: ['Grilled Steak', 'Caramelized onion Steak', 'Spicy Steak', 'Bacon', 'Garlic Butter Sauce', 'Onion','Smoked Ham', 'Honey Glazed Ham', 'Spicy Ham','Rice', 'Mashed Potatoes', 'French Fries', 'Saute Vegetables' ]),
        ];
      case 'Pasta':
        return [
          _foodVariantCard('Alfredo Pasta', 'Creamy fettuccine alfredo', 11.99, 'assets/alfredo pasta.png'),
          _foodVariantCard('Pesto Pasta', 'Pasta with fresh basil pesto', 12.49, 'assets/pesto pasta.png'),
          _foodVariantCard('Spaghetti Bolognese', 'Spaghetti with hearty meat sauce', 12.99, 'assets/spaghetti bolognese.png'),
          _buildCustomPlateSection(items: ['Mozzarella', 'Extra Cheese', 'Olives', 'Sausages', 'Meatballs', 'Shrimps', 'Mushroom', 'Bolognese Pasta', 'Lasagna Pasta', 'Fettuccine Alfredo Pasta', 'Spaghetti Pasta' ,'Pesto Sauce', 'Red Sauce', 'White Creamy Sauce']),
        ];
      case 'Salad':
        return [
          _foodVariantCard('Caesar Salad', 'Fresh romaine with Caesar dressing', 4.99, 'assets/caesar salad.png'),
          _foodVariantCard('Greek Salad', 'Mediterranean salad with feta', 5.49, 'assets/greek salad.png'),
          _foodVariantCard('Garden Salad', 'Fresh garden salad', 4.49, 'assets/garden salad.png'),
          _buildCustomPlateSection(items: ['Mozzarella', 'Avocado', 'Olives', 'Bacon','Tomatoes', 'Onions','Lettuce', 'Feta Cheese', 'Grilled Chicken', 'Sweet Corn', 'Cucumber','Baked Bread', 'Carrot', 'Mayonnaise', 'Mustard', 'Caesar dressing']),
        ];
      case 'Ice Cream':
        return [
          _foodVariantCard('Vanilla Ice Cream', 'Classic vanilla flavor', 3.50, 'assets/vanilla ice cream.png'),
          _foodVariantCard('Chocolate Ice Cream', 'Rich chocolate flavor', 3.50, 'assets/chocolate ice cream.png'),
          _foodVariantCard('Strawberry Ice Cream', 'Fresh strawberry flavor', 3.50, 'assets/strawberry ice cream.png'),
        ];
      case 'Cake':
        return [
          _foodVariantCard('Chocolate Cake', 'Rich and delicious chocolate cake', 5.50, 'assets/chocolate cake.png'),
          _foodVariantCard('Vanilla Cake', 'Light vanilla cake with frosting', 5.50, 'assets/vanilla cake.png'),
          _foodVariantCard('Carrot Cake', 'Moist carrot cake with cream cheese icing', 6.00, 'assets/carrot cake.png'),
        ];
      case 'Pudding':
        return [
          _foodVariantCard('Chocolate Pudding', 'Smooth chocolate pudding', 3.50, 'assets/chocolate pudding.png'),
          _foodVariantCard('Vanilla Pudding', 'Creamy vanilla pudding', 3.50, 'assets/vanilla pudding.png'),
          _foodVariantCard('Rice Pudding', 'Traditional rice pudding with cinnamon', 3.50, 'assets/rice pudding.png'),
        ];
      case 'Gateau':
        return [
          _foodVariantCard('Chocolate Gateau', 'Decadent chocolate gateau', 6.50, 'assets/chocolate gateau.png'),
          _foodVariantCard('Fruit Gateau', 'Fresh fruit-topped gateau', 6.50, 'assets/fruit gateau.png'),
          _foodVariantCard('Vanilla Gateau', 'Light vanilla gateau', 6.50, 'assets/vanilla gateau.png'),
        ];
      case 'Cupcake':
        return [
          _foodVariantCard('Chocolate Cupcake', 'Rich chocolate cupcake', 2.50, 'assets/chocolate cupcake.png'),
          _foodVariantCard('Vanilla Cupcake', 'Classic vanilla cupcake', 2.50, 'assets/vanilla cupcake.png'),
          _foodVariantCard('Red Velvet Cupcake', 'Moist red velvet cupcake', 3.00, 'assets/red velvet cupcake.png'),
        ];
      case 'Cheesecake':
        return [
          _foodVariantCard('New York Cheesecake', 'Classic New York-style cheesecake', 5.99, 'assets/new york cheesecake.png'),
          _foodVariantCard('Berry Cheesecake', 'Cheesecake topped with fresh berries', 6.50, 'assets/berry cheesecake.png'),
          _foodVariantCard('Chocolate Cheesecake', 'Rich chocolate cheesecake', 6.00, 'assets/chocolate cheesecake.png'),
        ];
      case 'Brownie':
        return [
          _foodVariantCard('Classic Brownie', 'Fudgy brownie topped with chocolate', 3.99, 'assets/classic brownie.png'),
          _foodVariantCard('Walnut Brownie', 'Brownie with walnuts', 4.00, 'assets/walnut brownie.png'),
          _foodVariantCard('Peanut Butter Brownie', 'Brownie with peanut butter swirl', 4.50, 'assets/peanut butter brownie.png'),
        ];
      case 'Cookies':
        return [
          _foodVariantCard('Chocolate Chip Cookies', 'Freshly baked chocolate chip cookies', 1.99, 'assets/chocolate chip cookies.png'),
          _foodVariantCard('Oatmeal Raisin Cookies', 'Delicious oatmeal raisin cookies', 2.00, 'assets/oatmeal raisin cookies.png'),
          _foodVariantCard('Peanut Butter Cookies', 'Rich peanut butter cookies', 2.50, 'assets/peanut butter cookies.png'),
        ];
      case 'Doughnut':
        return [
          _foodVariantCard('Glazed Doughnut', 'Classic glazed doughnut', 2.50, 'assets/glazed doughnut.png'),
          _foodVariantCard('Chocolate Doughnut', 'Chocolate-covered doughnut', 2.50, 'assets/chocolate doughnut.png'),
          _foodVariantCard('Sprinkled Doughnut', 'Doughnut with colorful sprinkles', 2.50, 'assets/sprinkled doughnut.png'),
        ];
      case 'Cocktails':
        return [
          _foodVariantCard('Mojito', 'Refreshing mint mojito', 7.99, 'assets/mojito.png'),
          _foodVariantCard('Pina Colada', 'Tropical pina colada', 8.50, 'assets/pina colada.png'),
          _foodVariantCard('Margarita', 'Classic margarita cocktail', 8.99, 'assets/margarita.png'),
        ];
      case 'Soft Drinks':
        return [
          _foodVariantCard('Cola', 'Classic cola drink', 2.50, 'assets/cola.png'),
          _foodVariantCard('Lemonade', 'Freshly squeezed lemonade', 2.50, 'assets/lemonade.png'),
          _foodVariantCard('Sprite', 'Refreshing lemon-lime soda', 2.50, 'assets/sprite.png'),
        ];
      case 'Iced Tea':
        return [
          _foodVariantCard('Peach Iced Tea', 'Sweet peach iced tea', 2.50, 'assets/peach iced tea.png'),
          _foodVariantCard('Lemon Iced Tea', 'Zesty lemon iced tea', 2.50, 'assets/lemon iced tea.png'),
          _foodVariantCard('Mint Iced Tea', 'Refreshing mint iced tea', 2.50, 'assets/mint iced tea.png'),
        ];
      case 'Juices':
        return [
          _foodVariantCard('Orange Juice', 'Freshly squeezed orange juice', 2.50, 'assets/orange juice.png'),
          _foodVariantCard('Apple Juice', 'Crisp apple juice', 2.50, 'assets/apple juice.png'),
          _foodVariantCard('Carrot Juice', 'Healthy carrot juice', 2.50, 'assets/carrot juice.png'),
        ];
      case 'Smoothies':
        return [
          _foodVariantCard('Berry Smoothie', 'Mixed berry smoothie', 3.50, 'assets/berry smoothie.png'),
          _foodVariantCard('Mango Smoothie', 'Tropical mango smoothie', 3.50, 'assets/mango smoothie.png'),
          _foodVariantCard('Green Smoothie', 'Healthy green smoothie', 3.50, 'assets/green smoothie.png'),
        ];
      case 'Iced Coffee':
        return [
          _foodVariantCard('Iced Latte', 'Smooth iced latte', 3.50, 'assets/iced latte.png'),
          _foodVariantCard('Iced Mocha', 'Rich iced mocha', 3.50, 'assets/iced mocha.png'),
          _foodVariantCard('Iced Americano', 'Bold iced americano', 3.50, 'assets/iced americano.png'),
        ];
      case 'Hot Tea':
        return [
          _foodVariantCard('Green Tea', 'Refreshing green tea', 2.50, 'assets/green tea.png'),
          _foodVariantCard('Black Tea', 'Classic black tea', 2.50, 'assets/black tea.png'),
          _foodVariantCard('Herbal Tea', 'Soothing herbal tea', 2.50, 'assets/herbal tea.png'),
        ];
      case 'Hot Drinks':
        return [
          _foodVariantCard('Hot Chocolate', 'Rich hot chocolate', 3.00, 'assets/hot chocolate.png'),
          _foodVariantCard('Chai Latte', 'Spiced chai latte', 3.50, 'assets/chai latte.png'),
          _foodVariantCard('Cappuccino', 'Classic cappuccino', 3.50, 'assets/cappuccino.png'),
        ];
      case 'Hot Coffee':
        return [
          _foodVariantCard('Espresso', 'Strong espresso coffee', 2.50, 'assets/espresso.png'),
          _foodVariantCard('Americano', 'Classic americano', 2.50, 'assets/americano.png'),
          _foodVariantCard('Latte', 'Smooth latte coffee', 3.00, 'assets/latte.png'),
        ];
      default:
        return [Text('No variants available.')];
    }
  }

  Widget _foodVariantCard(String name, String description, double price, String imageUrl) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(imageUrl, height: 70, width: 70, fit: BoxFit.cover),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(description),
                  Text('\$${price.toStringAsFixed(2)}', style: TextStyle(color: Colors.green)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomPlateSection({required List<String> items}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Customize Your Own Plate!', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            ...items.map((item) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(item, style: TextStyle(fontSize: 17)),
                  Row(
                    children: [
                      _buildAdjustButton(item, false), // Minus button
                      _buildCountDisplay(item),
                      _buildAdjustButton(item, true), // Plus button
                    ],
                  ),
                ],
              );
            }).toList(),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Custom plate created!')),
                );
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAdjustButton(String item, bool isIncrease) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isIncrease) {
            _incrementCount(item);
          } else {
            _decrementCount(item);
          }
        });
      },
      child: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.red[200],
          borderRadius: BorderRadius.circular(6),
        ),
        child: Icon(
          isIncrease ? Icons.add : Icons.remove,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }

  Widget _buildCountDisplay(String item) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        _getItemCount(item).toString(),
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  void _incrementCount(String item) {
    switch (item) {
      case 'Mozzarella': mozzarellaCount++; break;
      case 'Extra Cheese': extraCheeseCount++; break;
      case 'Avocado': avocadoCount++; break;
      case 'Bacon': baconCount++; break;
      case 'Olives': olivesCount++; break;
      case 'Chicken': chickenCount++; break;
      case 'Meatballs': meatballsCount++; break;
      case 'Sausages': sausagesCount++; break;
      case 'Onion': onionCount++; break;
      case 'Tomatoes': tomatoesCount++; break;
      case 'Parmesan': parmesanCount++; break;
      case 'Pepperoni': pepperoniCount++; break;
      case 'Mushroom': mushroomCount++; break;
      case 'Ranch Sauce': ranchsauceCount++; break;
      case 'BBQ Sauce': bbqsauceCount++; break;
      case 'Tomato Sauce': tomatosauceCount++; break;
      case 'Thousand island Sauce': thousandislandsauceCount++; break;
      case 'Mustard': mustardCount++; break;
      case 'Caramelized Onions': caramelizedonionsCount++; break;
      case 'Mayonnaise': mayonnaiseCount++; break;
      case 'Lettuce': lettuceCount++; break;
      case 'Grilled Beef': grilledbeefCount++; break;
      case 'Half Grilled Chicken': halfgrilledchickenCount++; break;
      case 'Quarter Grilled Chicken': quarterfriedchickenCount++; break;
      case 'Grilled Chicken': grilledchickenCount++; break;
      case 'Half Fried Chicken': halffriedchickenCount++; break;
      case 'Quarter Fried Chicken': quarterfriedchickenCount++; break;
      case 'Fried Chicken': friedchickenCount++; break;
      case 'Grilled Chicken Spicy': grilledchickenspicyCount++; break;
      case 'Fried Chicken Spicy': friedchickenspicyCount++; break;
      case 'Rice': riceCount++; break;
      case 'Saute Vegetables': sautevegetablesCount++; break;
      case 'Mashed Potatoes': mashedpotatoesCount++; break;
      case 'French Fries': frenchfriesCount++; break;
      case 'Grilled Steak': grilledsteakCount++; break;
      case 'Caramelized Onion Steak': caramelizedonionsteakCount++; break;
      case 'Spicy Steak': spicysteakCount++; break;
      case 'Spicy Ham': spicyhamCount++; break;
      case 'Smoked Ham': smokedhamCount++; break;
      case 'Honey Glazed Ham': honeyglazedhamCount++; break;
      case 'Garlic Butter Sauce': garlicbuttersauceCount++; break;
      case 'Shrimps': shrimpsCount++; break;
      case 'Fettuccine Alfredo Pasta': fettuccinealfredopastaCount++; break;
      case 'Spaghetti Pasta': spaghettipastaCount++; break;
      case 'Bolognese Pasta': bolognesepastaCount++; break;
      case 'Lasagna Pasta': lasagnapastaCount++; break;
      case 'Red Sauce': redsauceCount++; break;
      case 'White Creamy Sauce': whitecreamysauceCount++; break;
      case 'Pesto Sauce': pestosauceCount++; break;
      case 'Feta Cheese': fetacheeseCount++; break;
      case 'Sweet Corn': sweetcornCount++; break;
      case 'Cucumber': cucumberCount++; break;
      case 'Carrot': carrotCount++; break;
      case 'Baked Bread': bakedbreadCount++; break;
      case 'Caesar dressing': caesardressingCount++; break;


    }
  }

  void _decrementCount(String item) {
    switch (item) {
      case 'Mozzarella': if (mozzarellaCount > 0) mozzarellaCount--; break;
      case 'Extra Cheese': if (extraCheeseCount > 0) extraCheeseCount--; break;
      case 'Avocado': if (avocadoCount > 0) avocadoCount--; break;
      case 'Bacon': if (baconCount > 0) baconCount--; break;
      case 'Olives': if (olivesCount > 0) olivesCount--; break;
      case 'Chicken': if (chickenCount > 0) chickenCount--; break;
      case 'Meatballs': if (meatballsCount > 0) meatballsCount--; break;
      case 'Sausages': if (sausagesCount > 0) sausagesCount--; break;
      case 'Onion': if (onionCount > 0) onionCount--; break;
      case 'Tomatoes': if (tomatoesCount > 0) tomatoesCount--; break;
      case 'Parmesan': if (parmesanCount > 0) parmesanCount--; break;
      case 'Pepperoni': if (pepperoniCount > 0) pepperoniCount--; break;
      case 'Mushroom': if (mushroomCount > 0) mushroomCount--; break;
      case 'Ranch Sauce': if (ranchsauceCount > 0) ranchsauceCount--; break;
      case 'BBQ Sauce': if (bbqsauceCount > 0) bbqsauceCount--; break;
      case 'Tomato Sauce': if (tomatosauceCount > 0) tomatosauceCount--; break;
      case 'Thousand Island Sauce': if (thousandislandsauceCount > 0) thousandislandsauceCount--; break;
      case 'Mustard': if (mustardCount > 0) mustardCount--; break;
      case 'Caramelized Onions': if (caramelizedonionsCount > 0) caramelizedonionsCount--; break;
      case 'Mayonnaise': if (mayonnaiseCount > 0) mayonnaiseCount--; break;
      case 'Lettuce': if (lettuceCount > 0) lettuceCount--; break;
      case 'Grilled Beef': if (grilledbeefCount > 0) grilledbeefCount--; break;
      case 'Half Grilled Chicken': if (halfgrilledchickenCount > 0) halfgrilledchickenCount--; break;
      case 'Quarter Grilled Chicken': if (quartergrilledchickenCount > 0) quartergrilledchickenCount--; break;
      case 'Grilled Chicken': if (grilledchickenCount > 0) grilledchickenCount--; break;
      case 'Half Fried Chicken': if (halffriedchickenCount > 0) halffriedchickenCount--; break;
      case 'Quarter Fried Chicken': if (quarterfriedchickenCount > 0) quarterfriedchickenCount--; break;
      case 'Fried Chicken ': if (friedchickenCount > 0) friedchickenCount--; break;
      case 'Rice': if (riceCount > 0) riceCount--; break;
      case 'Mashed Potatoes': if (mashedpotatoesCount > 0) mashedpotatoesCount--; break;
      case 'Saute Vegetables': if (sautevegetablesCount > 0) sautevegetablesCount--; break;
      case 'French Fries': if (frenchfriesCount > 0) frenchfriesCount--; break;
      case 'Grilled Steak': if (grilledsteakCount > 0) grilledsteakCount--; break;
      case 'Caramelized Onion Steak': if (caramelizedonionsteakCount > 0) caramelizedonionsteakCount--; break;
      case 'Spicy Steak': if (spicysteakCount > 0) spicysteakCount--; break;
      case 'Spicy Ham': if (spicyhamCount > 0) spicyhamCount--; break;
      case 'Honey Glazed Ham': if (honeyglazedhamCount > 0) honeyglazedhamCount--; break;
      case 'Smoked Ham': if (smokedhamCount > 0) smokedhamCount--; break;
      case 'Garlic Butter Sauce': if (garlicbuttersauceCount > 0) garlicbuttersauceCount--; break;
      case 'Shrimps': if (shrimpsCount > 0) shrimpsCount--; break;
      case 'Fettuccine Alfredo Pasta': if (fettuccinealfredopastaCount > 0) fettuccinealfredopastaCount--; break;
      case 'Spaghetti Pasta': if (spaghettipastaCount > 0) spaghettipastaCount--; break;
      case 'Bolognese Pasta': if (bolognesepastaCount > 0) bolognesepastaCount--; break;
      case 'Lasagna Pasta': if (lasagnapastaCount > 0) lasagnapastaCount--; break;
      case 'Red Sauce': if (redsauceCount > 0) redsauceCount--; break;
      case 'White Creamy Sauce': if (whitecreamysauceCount > 0) whitecreamysauceCount--; break;
      case 'Pesto Sauce': if (pestosauceCount > 0) pestosauceCount--; break;
      case 'Feta Cheese': if (fetacheeseCount > 0) fetacheeseCount--; break;
      case 'Sweet Corn': if (sweetcornCount > 0) sweetcornCount--; break;
      case 'Carrot': if (carrotCount > 0) carrotCount--; break;
      case 'Cucumber': if (cucumberCount > 0) cucumberCount--; break;
      case 'Baked Bread': if (bakedbreadCount > 0) bakedbreadCount--; break;
      case 'Caesar dressing': if (caesardressingCount > 0) caesardressingCount--; break;
    }
  }

  int _getItemCount(String item) {
    switch (item) {
      case 'Mozzarella': return mozzarellaCount;
      case 'Extra Cheese': return extraCheeseCount;
      case 'Avocado': return avocadoCount;
      case 'Bacon': return baconCount;
      case 'Olives': return olivesCount;
      case 'Chicken': return chickenCount;
      case 'Meatballs': return meatballsCount;
      case 'Sausages': return sausagesCount;
      case 'Onion': return onionCount;
      case 'Tomatoes': return tomatoesCount;
      case 'Parmesan': return parmesanCount;
      case 'Pepperoni': return pepperoniCount;
      case 'Mushroom': return mushroomCount;
      case 'Ranch Sauce': return ranchsauceCount;
      case 'BBQ Sauce': return bbqsauceCount;
      case 'Tomato Sauce': return tomatosauceCount;
      case 'Thousand Island Sauce': return thousandislandsauceCount;
      case 'Mustard': return mustardCount;
      case 'Caramelized Onions': return caramelizedonionsCount;
      case 'Mayonnaise': return mayonnaiseCount;
      case 'Lettuce': return lettuceCount;
      case 'Grilled Beef': return grilledbeefCount;
      case 'Half Grilled Chicken': return halfgrilledchickenCount;
      case 'Quarter Grilled Chicken': return quartergrilledchickenCount;
      case 'Grilled Chicken': return grilledchickenCount;
      case 'Half Fried Chicken': return halffriedchickenCount;
      case 'Quarter Fried Chicken': return quarterfriedchickenCount;
      case 'Fried Chicken': return friedchickenCount;
      case 'Rice': return riceCount;
      case 'Mashed Potatoes': return mashedpotatoesCount;
      case 'Saute Vegetables': return sautevegetablesCount;
      case 'French Fries ': return frenchfriesCount;
      case 'Grilled Steak': return grilledsteakCount;
      case 'Caramelized Onion Steak': return caramelizedonionsteakCount;
      case 'Spicy Steak': return spicysteakCount;
      case 'Spicy Ham': return spicyhamCount;
      case 'Honey Glazed Ham': return honeyglazedhamCount;
      case 'Smoked Ham': return smokedhamCount;
      case 'Garlic Butter Sauce': return garlicbuttersauceCount;
      case 'Shrimps': return shrimpsCount;
      case 'Fettuccine Alfredo Pasta': return fettuccinealfredopastaCount;
      case 'Spaghetti Pasta': return spaghettipastaCount;
      case 'Bolognese Pasta': return bolognesepastaCount;
      case 'Lasagna Pasta': return lasagnapastaCount;
      case 'Red Sauce': return redsauceCount;
      case 'White Creamy Sauce': return whitecreamysauceCount;
      case 'Pesto Sauce': return pestosauceCount;
      case 'Feta Cheese': return fetacheeseCount;
      case 'Sweet Corn': return sweetcornCount;
      case 'Carrot': return carrotCount;
      case 'Cucumber': return cucumberCount;
      case 'Baked Bread': return bakedbreadCount;
      case 'Caesar dressing': return caesardressingCount;
      default: return 0;
    }
  }
}
