import 'package:flutter/material.dart';

class resultScreen extends StatelessWidget {
  const resultScreen({
    super.key, //required this.bmiScore
  });
  // final double bmiScore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calculation result",
          style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 62, 92, 116),
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios_new),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Text(
                "BMI Score",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 62, 92, 116),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "23,6",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.green,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Normal",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
