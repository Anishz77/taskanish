
import 'package:flutter/material.dart';

import '../model/arithmetic_model.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  // Global Key
  final mykey=GlobalKey<FormState>();

  ArithmeticModel? arithmeticModel;
// Delcare variables
  double? first;
  double? second;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: const Text("Arithmetic Anish"),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: mykey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                onChanged: (value) {
                  first = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First No',
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                onChanged: (value) {
                  second = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second No',
                ),
              ),
              const SizedBox(height: 8),

              // Button Substract
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (mykey.currentState!.validate()){}
                    setState(() {
                      arithmeticModel=ArithmeticModel(first: first!, second: second!);
                      result = arithmeticModel!.substract();
                    });
                  },
                  child: const Text(
                    'Substract',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Add
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (mykey.currentState!.validate()){}
                    setState(() {
                      arithmeticModel=ArithmeticModel(first: first!, second: second!);
                      result = arithmeticModel!.add();
                    });
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Multiply
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (mykey.currentState!.validate()){}
                    setState(() {
                      arithmeticModel=ArithmeticModel(first: first!, second: second!);
                      result = arithmeticModel!.multiply();
                    });
                  },
                  child: const Text(
                    'Multiply',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (mykey.currentState!.validate()){}
                    setState(() {
                      arithmeticModel=ArithmeticModel(first: first!, second: second!);
                      result = arithmeticModel!.divide();
                    });
                  },
                  child: const Text(
                    'Divide',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
        
              // Display informatuion
              Text(
                'Result is : $result',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}