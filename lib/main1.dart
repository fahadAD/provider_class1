import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class1/counter_provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

 print("build calling successful");

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [

 Consumer<Counters>(builder: (context, value, child) {

   return Padding(
     padding: const EdgeInsets.all(8.0),
     child:   Text(value.counter.toString()),
   );

 },),

           Consumer<Counters>(builder: (context, value, child) {

             return Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 ElevatedButton(onPressed: () {
                   value.plus();
                 }, child: Text("Plus")),
                 ElevatedButton(onPressed: () {
                   value.restart();
                 }, child: Text("Reset")),
                 ElevatedButton(onPressed: () {
                   value.minus();
                 }, child: Text("Minus")),

               ],);

           },)

        ],
      ),
    );
  }
}
