import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider/counter_controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build');
    final provider = Provider.of<CounterController>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Column(
        children: [
          Consumer<CounterController>(
            builder: (context, value, child) => Center(
              child: Text(
                'counter ${provider.counter}',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              provider.add();
            },
            color: Colors.blue,
            child: Text('Add'),
          )
        ],
      ),
    );
  }
}
