import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class InrToDollar extends StatefulWidget {
  const InrToDollar({super.key});

  @override
  State<InrToDollar> createState() => _InrToDollarState();
}

class _InrToDollarState extends State<InrToDollar> {
  TextEditingController inrController = TextEditingController();
  double dollar = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inr to Dollar Converter'),
      ),
      body: Container(
        //give some padding
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: inrController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Inr',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  dollar = double.parse(inrController.text) * 0.012;
                });
              },
              child: Text("Convert"),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Dollar : " + dollar.toString(),
              //increse some font size
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
