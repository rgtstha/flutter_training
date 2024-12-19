import 'package:flutter/material.dart';
import 'package:flutter_training/models/event.dart';
import 'package:flutter_training/screens/about_screen.dart';
import 'package:flutter_training/widgets/course_card.dart';
import 'package:flutter_training/widgets/event_tile.dart';
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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 235, 232, 232),
              ),
              child: Column(
                children: [
                  const Text(
                    "WELCOME TO THE COLLEGE",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Padma Kanya Multiple Campus (PKMC) was established in 1951(Aswin 2008 B.S.) as first women’s campus of Nepal. Initially, its academic activities were brought into operation at the present location of Kanya School, Dillibazar. King Tribhuvan inaugurated the campus. The then Prime Minister (Head of the Government) Mohan Shamsher Rana, Finance Minister Subarna Sumsher Rana, Home Minister B. P. Koirala, Minister of Education, Nripa Jung Rana, and the social workers of the time were present on the occasion. At the time establishment, its academic programme started in eight subjects of humanities.",
                    style: TextStyle(fontSize: 15),
                  ),
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
                    child: const Text(" + ReadMore"),
                  ),
                ],
              ),
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
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 0.8,
              physics: NeverScrollableScrollPhysics(),
              children: [
                CourseCard(
                  title: "BCA",
                  subtitle: "Bachelor in Computer Application",
                ),
                CourseCard(
                  title: "Bsc.CSIT",
                  subtitle: "Bachelor of Computer Science and Information Technology",
                ),
                CourseCard(
                  title: "BBS",
                  subtitle: "Bachelor of Business Study",
                ),
                CourseCard(
                  title: "BSW",
                  subtitle: "Bachelor of Social Work",
                ),
                CourseCard(
                  title: "BIT",
                  subtitle: "Bachelor of Information Technology",
                ),
              ],
            ),
            Heading(text: "Events"),
            ListView.builder(
              itemCount: events.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                Event abc = events[index];
                return Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: EventTile(
                    title: abc.title,
                    description: abc.description,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
