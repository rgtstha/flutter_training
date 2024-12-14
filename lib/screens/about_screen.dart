import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Image.asset("assets/aboutus.jpg"),
                  Container(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Text(
                      "About Us",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  "Padma Kanya Multiple Campus (PKMC) was established in 1951(Aswin 2008 B.S.) as first women’s campus of Nepal. Initially, its academic activities were brought into operation at the present location of Kanya School, Dillibazar. King Tribhuvan inaugurated the campus. The then Prime Minister (Head of the Government) Mohan Shamsher Rana, Finance Minister Subarna Sumsher Rana, Home Minister B. P. Koirala, Minister of Education, Nripa Jung Rana, and the social workers of the time were present on the occasion. At the time of establishment, its academic programme started in eight subjects of humanities. n The campus then was shifted to nearby Shankardev Campus. Later on, it was transferred to the present location and ever since, the academic activities have been running over here. Presently the campus has been offering higher educational degrees in Humanities and Social Sciences, Management and Science. \n \n\nPKMC as a constituent campus of Tribhuvan University has been imparting education to women from Nepal, India, Sri-Lanka, Korea and many other countries. Students come from diverse geographical locations and socio-cultural clusters.\n\n PKMC possesses 4.6 acre of land. A number of buildings have been constructed for classrooms, library, laboratories, and hostels including play-grounds within the campus premises. Quality education for women empowerment is the motto of this Campus. Moderately meeting its infrastructural requirements, the Campus has five buildings— two for conducting classes, and accommodating administrative facilities, one for the computer laboratory, physical and e-library, one for girls’ dormitory with the capacity of 200 students, and an old-hostel building which after renovation is planned to be used for Bachelor of Hotel Management (BHM) program. A few other smaller built spaces accommodate campus cafeteria and Dance Section with theater and class facilities for the Master’s program. Although the campus has spacious area, it still requires additional built-space to accommodate the growing number of classes with the expansion of academic programs, and a library with sufficient resources to serve the academic needs of students. Further, the library is in a dire need of expansion of its collection of books, journals, newspaper, magazines, and periodicals with e-library extension and upgradation."),
            )
          ],
        ),
      ),
    );
  }
}
