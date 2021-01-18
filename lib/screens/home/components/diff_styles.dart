import 'package:flutter/material.dart';
import 'package:mytrainingapp/constants/constants.dart';
import 'package:mytrainingapp/data/data.dart';
import 'package:mytrainingapp/models/style.dart';
import 'package:mytrainingapp/screens/home/components/coursedetails.dart';

class DiffStyles extends StatelessWidget {
  _buildStyles(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Style style = styles[index];

    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: appPadding / 2),
          child: Container(
            margin: EdgeInsets.only(top: 0, bottom: appPadding * 2),
            width: size.width * 0.9,
            height: size.height * 0.6,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: new AssetImage(style.imageUrl), fit: BoxFit.contain),
                color: Colors.grey,
                // borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(20.0),
                //     bottomLeft: Radius.circular(20.0),
                //     bottomRight: Radius.circular(20.0),
                //     topRight: Radius.circular(100.0)),
                boxShadow: [
                  BoxShadow(
                      color: black.withOpacity(0.3),
                      blurRadius: 20.0,
                      offset: Offset(5, 15))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: appPadding * 2, top: 0),
                  child: Text(
                    style.name,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: appPadding * 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_outlined,
                            color: white,
                          ),
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          Text(
                            style.time.toString() + ' Hours',
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.normal,
                                color: white),
                            maxLines: 2,
                          ),
                          Text(
                            '   ' + style.firstDate + ' - ' + style.lastDate,
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.normal,
                                color: white),
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: appPadding * 2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          Text(
                            '\$' + style.firstPrice,
                            style: TextStyle(
                                fontSize: 19,
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.normal,
                                color: Colors.red),
                            maxLines: 2,
                          ),
                          Text(
                            '   \$' + style.lastPrice,
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.normal,
                                color: Colors.red),
                            maxLines: 2,
                          ),
                        ],
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CourseDetailScreen(
                                        imageUrl: style.imageUrl,
                                        name: style.name,
                                        time: ' ',
                                        // students: style.students,
                                        address: style.firstPrice,
                                        location: style.lastPrice,
                                        trainer: ' ',
                                        status: ' ',
                                        duration:
                                            style.time.toString() + ' hours',
                                        trainingName: ' ',
                                        firstDate: style.firstDate,
                                        lastDate: style.lastDate,
                                      )));
                        },
                        child: Text(
                          'View Details ->',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // Positioned(
        //   left: 0,
        //   top: 30,
        //   child: Container(
        //     child:
        //         //  Text(
        //         //   '${style.name}',
        //         //   style: TextStyle(
        //         //     fontSize: 24,
        //         //     fontWeight: FontWeight.w800,
        //         //     letterSpacing: 1.5,
        //         //   ),
        //         // ),
        //         Image(
        //       width: size.width * 0.3,
        //       height: size.height * 0.2,
        //       image: AssetImage(style.imageUrl),
        //     ),
        //   ),
        // )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: appPadding, vertical: appPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Highlights',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: appPadding / 2),
          child: Container(
            height: size.height * 0.33,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: styles.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildStyles(context, index);
                }),
          ),
        )
      ],
    );
  }
}
