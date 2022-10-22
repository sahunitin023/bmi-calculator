import 'package:flutter/material.dart';
import 'constants.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(30.0),
            child: const Text(
              'Your Result',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w800),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: kActiveCardColor,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 30.0),
              padding: const EdgeInsets.all(35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'NORMAL',
                    style: TextStyle(
                      color: Color.fromARGB(255, 49, 201, 54),
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '22.1',
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Normal BMI range:',
                    style: TextStyle(
                        color: Color(0xFF68697A),
                        fontSize: 17.0,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '18.5 - 25 kg/m2',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Text(
                    'You have normal Body Weight. Good Job!!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 35.0),
            color: kBottomBoxColor,
            width: double.infinity,
            height: kBottomBoxHeight,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
