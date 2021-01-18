import 'dart:math';

import 'package:flutter/material.dart';

class CourseDetailScreen extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String time;
  final String students;
  final String address;
  final String location;
  final String trainer;
  final String status;
  final String duration;
  final String trainingName;
  final String firstDate;
  final String lastDate;

  CourseDetailScreen({
    Key key,
    this.imageUrl,
    this.name,
    this.time,
    this.students,
    this.address,
    this.location,
    this.trainer,
    this.status,
    this.duration,
    this.trainingName,
    this.firstDate,
    this.lastDate,
  }) : super(key: key);
  @override
  _CourseDetailScreenState createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2446a6),
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Image.asset(widget.imageUrl, fit: BoxFit.fill),
                        ),
                        Positioned(
                          left: 5,
                          top: 5,
                          child: IconButton(
                            icon: Icon(
                              Icons.chevron_left,
                              color: Colors.white,
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          height: 70,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.blue,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "${widget.name}",
                            style: Theme.of(context).textTheme.display1.apply(
                                  color: Colors.white,
                                ),
                          ),
                          widget.trainer == null
                              ? ' '
                              : Text(
                                  widget.trainer,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle
                                      .apply(color: Colors.white70),
                                ),
                          widget.trainingName == null
                              ? ' '
                              : Text(
                                  widget.trainingName,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle
                                      .apply(color: Colors.white70),
                                ),
                          SizedBox(height: 10.0),
                          widget.status == null
                              ? ' '
                              : Text(
                                  widget.status,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    widget.duration,
                                    style: Theme.of(context)
                                        .textTheme
                                        .display1
                                        .apply(color: Colors.white),
                                  ),
                                  Text(
                                    widget.firstDate + '-' + widget.lastDate,
                                    style: Theme.of(context)
                                        .textTheme
                                        .body2
                                        .apply(color: Colors.white70),
                                  )
                                ],
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                      child: CircularProgressIndicator(
                                        value: .25,
                                        backgroundColor: Colors.lightBlueAccent,
                                        valueColor: AlwaysStoppedAnimation(
                                            Colors.white),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.brightness_3,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width / 2,
                                height: MediaQuery.of(context).size.width / 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      widget.location,
                                      style: Theme.of(context)
                                          .textTheme
                                          .display1
                                          .apply(color: Colors.white),
                                    ),
                                    Text(
                                      widget.address,
                                      // style: Theme.of(context)
                                      //     .textTheme
                                      //     .body2
                                      //     .apply(color: Colors.white70),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                      child: CircularProgressIndicator(
                                        value: .25,
                                        backgroundColor: Colors.lightBlueAccent,
                                        valueColor: AlwaysStoppedAnimation(
                                            Colors.white),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.home,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 5,
              color: Colors.lightBlueAccent,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.save,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.map,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                          ),
                          color: Colors.red,
                        ),
                        child: Transform.rotate(
                          angle: -pi / 2,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "Cancel Enrol",
                                ),
                              ),
                              Icon(Icons.clear, color: Colors.white60),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
