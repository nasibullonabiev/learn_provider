import 'package:flutter/material.dart';
import 'package:learn_provider/view_model/counter_view_model.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final counter = Provider.of<CounterViewModel>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () => counter.increment(),
                child: const Text(
                  "+1",
                  style: TextStyle(color: Colors.green, fontSize: 25),
                )),



            Text("${counter.counter}",style: const TextStyle(fontSize: 30),),



            ElevatedButton(
                onPressed: () => counter.decrement(),
                child: const Text(
                  "-1",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ))
          ],
        ),
      ),
    );
  }
}
