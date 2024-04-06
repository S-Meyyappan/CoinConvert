import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class DollarToINR extends StatefulWidget {
  const DollarToINR({super.key});

  @override
  State<DollarToINR> createState() => _DollarToINRState();
}

class _DollarToINRState extends State<DollarToINR> {
  //create controller for dollar
  TextEditingController dollarController = TextEditingController();
  //creating the varibale to store the inr value
  double inr = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dollar to inr Converter'),
      ),
      body: Container(
        //give some padding
        padding: EdgeInsets.all(20),
        //here we need to create
        //one text filed to take input form user
        //and one button
        //so we will use here column widget
        child: Column(
          children: [
            TextField(
              controller: dollarController,
              //some box around text field
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                //labele text
                labelText: 'Enter Dollar',
              ),
            ),
            //need some space between
            //textfield and button
            const SizedBox(
              height: 30,
            ),
            //create convert button
            ElevatedButton(
              onPressed: () {
                //on pressing the convert we
                //should convert the inr to dollar
                setState(() {
                  inr = double.parse(dollarController.text) * 82.40;
                });
              },
              child: Text("Convert"),
            ),
            //for some space between button and text
            SizedBox(
              height: 30,
            ),
            //now we have to show dollar on screen
            //so we will use here text widget
            Text(
              "Inr : " + inr.toString(),
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
