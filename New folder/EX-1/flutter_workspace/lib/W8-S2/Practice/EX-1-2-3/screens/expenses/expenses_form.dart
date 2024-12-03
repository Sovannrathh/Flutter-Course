import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../models/expense.dart';

class ExpenseForm extends StatefulWidget {
  const ExpenseForm({super.key, required this.onCreated});

  final Function(Expense) onCreated;

  @override
  State<ExpenseForm> createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  final _titleController = TextEditingController();
  final _valueController = TextEditingController();
  Category _selectedCategory = Category.food; 

  @override
  void dispose() {
    _titleController.dispose();
    _valueController.dispose();
    super.dispose();
  }

  void onCancel() {
    Navigator.pop(context); // Close modal
  }

  void onAdd() {
    // 1- Get the values from inputs
    String title = _titleController.text;
    double amount = double.tryParse(_valueController.text) ?? 0;

    if (title.isEmpty || amount <= 0) {
      // Show an error message if inputs are invalid
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please provide valid inputs!")),
      );
      return;
    }

    // 2- Create the expense
    Expense expense = Expense(
      title: title,
      amount: amount,
      date: DateTime.now(), // Fake data for now
      category: _selectedCategory,
    );

    // 3- Ask the parent to add the expense
    widget.onCreated(expense);

    // 4- Close modal
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
            ],
            controller: _valueController,
            maxLength: 50,
            decoration: const InputDecoration(
              prefix: Text('\$ '),
              label: Text('Amount'),
            ),
          ),
          DropdownButtonFormField<Category>(
            value: _selectedCategory,
            icon: const Icon(Icons.arrow_downward),
            elevation: 5,
            decoration: const InputDecoration(
              labelText: 'Category',
              border: OutlineInputBorder(),
            ),
            style: const TextStyle(color: Colors.deepPurple),
            onChanged: (Category? newValue) {
              setState(() {
                _selectedCategory = newValue!;
              });
            },
            items: Category.values.map((Category category) {
              return DropdownMenuItem<Category>(
                value: category,
                child: Text(category.name), // Display category name
              );
            }).toList(),
          ),
          const SizedBox(height: 10), // Add some spacing
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              ElevatedButton(onPressed: onCancel, child: const Text('Cancel')),
              const SizedBox(width: 20),
              ElevatedButton(onPressed: onAdd, child: const Text('Create')),
            ],
          ),
        ],
      ),
    );
  }
}
