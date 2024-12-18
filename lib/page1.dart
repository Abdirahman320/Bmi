import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({
    super.key,
    required this.startQuiz,
  });
  final void Function() startQuiz;

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  TextEditingController heightController = TextEditingController();

  TextEditingController weightController = TextEditingController();
  double? result;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, right: 26),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/bmi.png",
                  width: 80,
                ),
                const Spacer(),
                CircleAvatar(
                  radius: 30,
                  child: Image.asset(
                    "assets/men.png",
                    height: 45,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 160,
                    height: 500,
                    child: Image.asset(
                      "assets/carton.png",
                      fit: BoxFit.fill,
                      width: 160,
                      height: 400,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Text(
                        "Gender",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          style: IconButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(77, 138, 136, 136),
                              shape: const BeveledRectangleBorder()),
                          onPressed: () {},
                          icon: const Icon(Icons.male),
                        ),
                        IconButton(
                          style: IconButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(77, 138, 136, 136),
                              shape: const BeveledRectangleBorder()),
                          onPressed: () {},
                          icon: const Icon(Icons.female),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 60),
                      child: Text(
                        "Age",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                        width: 130,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.grey.shade100),
                        child: const SizedBox(
                          width: 200,
                          child: Padding(
                            padding: EdgeInsets.only(left: 50, top: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "32",
                              ),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Height",
                          style: TextStyle(
                              fontSize: 19,
                              color: Color.fromARGB(255, 31, 49, 63)),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Cm",
                          style: TextStyle(fontSize: 19, color: Colors.blue),
                        ),
                      ],
                    ),
                    Container(
                      width: 130,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.grey.shade100),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50, top: 20),
                        child: TextField(
                          decoration: const InputDecoration(
                            hintText: "100",
                          ),
                          controller: heightController,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                              fontSize: 19,
                              color: Color.fromARGB(255, 31, 49, 63)),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "lbs",
                          style: TextStyle(fontSize: 19, color: Colors.blue),
                        ),
                      ],
                    ),
                    Container(
                      width: 130,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.grey.shade100),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50, top: 20),
                        child: TextField(
                          decoration: const InputDecoration(
                            hintText: "100",
                          ),
                          controller: weightController,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 86, 151, 226),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                  onPressed: () {
                    
                    widget.startQuiz();
                  },
                  child: const Text(
                    "Calculate",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
