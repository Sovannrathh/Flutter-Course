// Write a program to calculate the total for a given order.
double calulateTotal(Map<String, double> pizzaPrices, List<String> order) {
  double total = 0.0;

  for (var pizza in order) {
    if (pizzaPrices.containsKey(pizza)) {
      total += pizzaPrices[pizza]!;
    } else {
      print('$pizza prizza is not on the menu');
    }
  }
  return total;
}

void main() {
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example order
  const order = ['margherita', 'pepperoni', 'pineapple'];

  // Your code
  double total = calulateTotal(pizzaPrices, order);

  if (total > 0) {
    print('Total: \$${total.toStringAsFixed(2)}');
  }
}
