import 'package:flutter/material.dart';
import 'package:mytrainingapp/constants/constants.dart';
import 'package:mytrainingapp/data/data.dart';
import 'package:mytrainingapp/models/course.dart';
import 'package:mytrainingapp/screens/home/components/coursedetails.dart';

class Courses extends StatelessWidget {
  Widget _buildCourses(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Course course = courses[index];

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: appPadding, vertical: appPadding / 2),
      child: Container(
        // height: size.height * 0.2,
        decoration: BoxDecoration(
            // image: DecorationImage(
            //     image: new AssetImage(course.imageUrl), fit: BoxFit.fill),
            color: white,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                  color: black.withOpacity(0.3),
                  blurRadius: 30.0,
                  offset: Offset(10, 15))
            ]),
        child: Padding(
          padding: const EdgeInsets.all(appPadding),
          child: Row(
            children: [
              Container(
                width: size.width * 0.3,
                height: size.height * 0.2,
                child: Column(
                  children: [
                    Text(
                      course.firstDate,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      ' - ' + course.lastDate,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      course.time + ' days',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      course.address,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width * 0.1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('|'),
                    Text('|'),
                    Text('|'),
                    Text('|'),
                    Text('|'),
                    Text('|'),
                    Text('|'),
                    Text('|'),
                  ],
                ),
              ),
              Container(
                width: size.width * 0.4,
                child: Padding(
                  padding: const EdgeInsets.only(
                      // left: appPadding / 2,
                      // top: appPadding / 1.5,
                      ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        course.status,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        course.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.folder_open_rounded,
                            color: black.withOpacity(0.3),
                          ),
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          Text(
                            course.students,
                            style: TextStyle(
                              color: black.withOpacity(0.3),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(course.imageUrl),
                          ),
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          Column(
                            children: [
                              Text(
                                course.trainingName,
                                style: TextStyle(),
                              ),
                              Text(
                                course.trainer,
                                style: TextStyle(),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        child: Padding(
                            padding: const EdgeInsets.only(
                              left: appPadding / 2,
                              top: appPadding / 1.5,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                FlatButton(
                                  color: Colors.red,
                                  textColor: Colors.white,
                                  disabledColor: Colors.grey,
                                  disabledTextColor: Colors.black,
                                  padding: EdgeInsets.all(8.0),
                                  splashColor: Colors.blueAccent,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CourseDetailScreen(
                                                  imageUrl: course.imageUrl,
                                                  name: course.name,
                                                  time: course.time,
                                                  students: course.students,
                                                  address: course.address,
                                                  location: course.location,
                                                  trainer: course.trainer,
                                                  status: course.status,
                                                  duration: course.duration,
                                                  trainingName:
                                                      course.trainingName,
                                                  firstDate: course.firstDate,
                                                  lastDate: course.lastDate,
                                                )));
                                  },
                                  child: Text(
                                    "Enrol Now",
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: appPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                  onPressed: null,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.tune,
                        color: black.withOpacity(0.3),
                      ),
                      Text(
                        '  Filter',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                  shape: Border.all(width: 1.0, color: Colors.grey),
                ),
                // Text(
                //   'See All',
                //   style: TextStyle(
                //       fontSize: 18,
                //       fontWeight: FontWeight.w800,
                //       color: primary),
                // ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: courses.length,
            itemBuilder: (context, index) {
              return _buildCourses(context, index);
            },
          ))
        ],
      ),
    );
  }
}
