import 'package:flutter/material.dart';
import 'package:flutter_training/screens/about_screen.dart';
import 'package:flutter_training/widgets/faculty_card.dart';
import 'package:flutter_training/widgets/heading.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(children: [
          Image.asset(
            "assets/logo.png",
            width: 40,
          ),
          const SizedBox(width: 15), // coloumn for height
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Padmakanya Multiple Campus",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Baghbazar,Kathmandu",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ]),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return AboutScreen();
                    },
                  ),
                );
              },
              child: Text("View More"),
            ),
            Heading(text: "Our Faculties"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FacultyCard(
                    text: "Faculty of Humanities and Social Science",
                  ),
                  SizedBox(width: 20),
                  FacultyCard(
                    text: "Faculty of management",
                  ),
                  SizedBox(width: 20),
                  FacultyCard(
                    text: "Institute of Science and Technology",
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Heading(text: "Our Courses"),
            SizedBox(height: 15),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "BCA",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Bachelor in Computer Application",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
