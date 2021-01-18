import 'package:mytrainingapp/models/course.dart';
import 'package:mytrainingapp/models/style.dart';

final python = Style(
  imageUrl: 'assets/image/python.png',
  name: 'Python',
  time: 5,
  firstDate: '30 Oct',
  lastDate: '30 Nov',
  firstPrice: '999',
  lastPrice: '899',
);
final java = Style(
  imageUrl: 'assets/image/java.png',
  name: 'Java',
  time: 8,
  firstDate: '30 Jan',
  lastDate: '30 Feb',
  firstPrice: '799',
  lastPrice: '699',
);
final rubyonrails = Style(
  imageUrl: 'assets/image/ruby.jpeg',
  name: 'Ruby On Rails',
  time: 6,
  firstDate: '30 Aug',
  lastDate: '30 Nov',
  firstPrice: '999',
  lastPrice: '799',
);
final html = Style(
  imageUrl: 'assets/image/html.png',
  name: 'Html & HTML5',
  time: 5,
  firstDate: '30 Oct',
  lastDate: '30 Dec',
  firstPrice: '1099',
  lastPrice: '899',
);
final javascript = Style(
  imageUrl: 'assets/image/javascript.png',
  name: 'JavaScript',
  time: 8,
  firstDate: '30 Sep',
  lastDate: '30 Nov',
  firstPrice: '1999',
  lastPrice: '1299',
);
final clang = Style(
  imageUrl: 'assets/image/c.jpg',
  name: 'C Language',
  time: 6,
  firstDate: '30 Jul',
  lastDate: '30 Nov',
  firstPrice: '1199',
  lastPrice: '999',
);
final cplusplus = Style(
  imageUrl: 'assets/image/c++.jpg',
  name: 'C++ Language',
  time: 5,
  firstDate: '30 Oct',
  lastDate: '30 Jan',
  firstPrice: '999',
  lastPrice: '899',
);
final chash = Style(
  imageUrl: 'assets/image/chash.png',
  name: 'C# Language',
  time: 8,
  firstDate: '30 Oct',
  lastDate: '30 Feb',
  firstPrice: '999',
  lastPrice: '899',
);
final objectiveC = Style(
  imageUrl: 'assets/image/objc.png',
  name: 'objective C',
  time: 6,
  firstDate: '10 Nov',
  lastDate: '30 Nov',
  firstPrice: '999',
  lastPrice: '899',
);
final php = Style(
  imageUrl: 'assets/image/php.png',
  name: 'PHP',
  time: 5,
  firstDate: '30 Oct',
  lastDate: '30 Nov',
  firstPrice: '499',
  lastPrice: '399',
);
final sql = Style(
  imageUrl: 'assets/image/sql.png',
  name: 'SQL',
  time: 8,
  firstDate: '30 Oct',
  lastDate: '30 Nov',
  firstPrice: '699',
  lastPrice: '599',
);
final swift = Style(
  imageUrl: 'assets/image/swift.jpeg',
  name: 'Swift',
  time: 6,
  firstDate: '30 April',
  lastDate: '30 May',
  firstPrice: '999',
  lastPrice: '699',
);

final styles = [
  python,
  java,
  rubyonrails,
  html,
  javascript,
  clang,
  cplusplus,
  chash,
  objectiveC,
  php,
  sql,
  swift
];

final _course1 = Course(
  imageUrl: 'assets/image/ccourse.png',
  name: 'C Language',
  time: '45',
  students: 'Advanced',
  address: '#1, eleven tower, TwentyOne road, Delhi, India',
  location: 'Delhi',
  trainer: 'Vipin Bera',
  status: 'Early Bird',
  duration: '10 Hours',
  trainingName: 'C Trainer',
  firstDate: '30 April',
  lastDate: '30 May',
);

final _course2 = Course(
  imageUrl: 'assets/image/c++course.png',
  name: 'C++ Language',
  time: '30',
  students: 'Intermediate',
  address: '#2, twelve tower,  TwentyTwo road, Kolkata, India',
  location: 'Kolkata',
  trainer: 'Aapti Sani',
  status: 'Strating Soon',
  duration: '7 Hours',
  trainingName: 'C++ Trainer',
  firstDate: '30 Oct',
  lastDate: '30 Dec',
);

final _course3 = Course(
  imageUrl: 'assets/image/chashcourse.png',
  name: 'C# Language',
  time: '20',
  students: 'Beginner',
  address: '#3, Thirteen tower,  TwentyThree road, Mumbai, India',
  location: 'Mumbai',
  trainer: 'Anusha Roy',
  status: 'Few Seats Left',
  duration: '8 Hours',
  trainingName: 'C# Trainer',
  firstDate: '30 Sep',
  lastDate: '30 Nov',
);

final _course4 = Course(
  imageUrl: 'assets/image/htmlcourse.jpg',
  name: 'Html',
  time: '45',
  students: 'Advanced',
  address: '#4,Fourteen tower,  TwentyFour road, Chennai, India',
  location: 'Chennai',
  trainer: 'Akash Jain',
  status: 'Filling Fast',
  duration: '9 Hours',
  trainingName: 'HTML Trainer',
  firstDate: '30 Aug',
  lastDate: '30 Oct',
);

final _course5 = Course(
  imageUrl: 'assets/image/javacouraw.jpg',
  name: 'Java',
  time: '30',
  students: 'Intermediate',
  address: '#5, Fifteen tower,  TwentyFive road, Bangalore, India',
  location: 'Bangalore',
  trainer: 'Manjusha Setty',
  status: 'Early Bird',
  duration: '10 Hours',
  trainingName: 'Java Trainer',
  firstDate: '30 Jan',
  lastDate: '30 March',
);

final _course6 = Course(
  imageUrl: 'assets/image/javascriptcourse.png',
  name: 'JavaScript',
  time: '20',
  students: 'Beginner',
  address: '#6, Sixteen tower,  TwentySix road, Kerala, India',
  location: 'Kerala',
  trainer: 'Nagma Khatun',
  status: 'Strating Soon',
  duration: '11 Hours',
  trainingName: 'JavaScript Trainer',
  firstDate: '30 Feb',
  lastDate: '30 April',
);

final _course7 = Course(
  imageUrl: 'assets/image/objCcourse.jpg',
  name: 'Objective C',
  time: '45',
  students: 'Advanced',
  address: '#7, Seven tower,  TwentySeven road, Goa, India',
  location: 'Goa',
  trainer: 'Vijay Shankar',
  status: 'Few Seats Left',
  duration: '16 Hours',
  trainingName: 'Obj C Trainer',
  firstDate: '30 March',
  lastDate: '30 May',
);

final _course8 = Course(
  imageUrl: 'assets/image/phpcourse.jpg',
  name: 'PHP',
  time: '30',
  students: 'Intermediate',
  address: '#8, Eight tower,  TwentyEight road, Nasik, India',
  location: 'Nasik',
  trainer: 'Gandhi ji',
  status: 'Filling Fast',
  duration: '15 Hours',
  trainingName: 'PHP Trainer',
  firstDate: '30 April',
  lastDate: '30 June',
);

final _course9 = Course(
  imageUrl: 'assets/image/pythoncourse.jpg',
  name: 'Python',
  time: '20',
  students: 'Beginner',
  address: '#9, Nine tower,  TwentyNine road, Nagpur, India',
  location: 'Nagpur',
  trainer: 'Nehru Ji',
  status: 'Early Bird',
  duration: '12 Hours',
  trainingName: 'Python Trainer',
  firstDate: '30 May',
  lastDate: '30 July',
);

final _course10 = Course(
  imageUrl: 'assets/image/rubycourse.jpg',
  name: 'Ruby On Rails',
  time: '45',
  students: 'Advanced',
  address: '#10, Ten tower,  Thirty road, Hyderabad, India',
  location: 'Chandigarh',
  trainer: 'Shashtri Ji',
  status: 'Strating Soon',
  duration: '9 Hours',
  trainingName: 'Ruby Trainer',
  firstDate: '30 June',
  lastDate: '30 Aug',
);

final _course11 = Course(
  imageUrl: 'assets/image/sqlcourse.png',
  name: 'SQL',
  time: '30',
  students: 'Intermediate',
  address: '#17, Seventeen tower, thirtyOne road, Chandigarh, India',
  location: 'Chandigarh',
  trainer: 'Sam Manekshaw',
  status: 'Few Seats Left',
  duration: '12 Hours',
  trainingName: 'SQL Trainer',
  firstDate: '30 July',
  lastDate: '30 Sep',
);

final _course12 = Course(
  imageUrl: 'assets/image/swiftcourse.jpg',
  name: 'Swift',
  time: '20',
  students: 'Beginner',
  address: '#18, Eighteen tower,  ThirtyTwo road, Gurugram, India',
  location: 'Gurugram',
  trainer: 'Kariappa',
  status: 'Filling Fast',
  duration: '10 Hours',
  trainingName: 'Swift Trainer',
  firstDate: '30 Aug',
  lastDate: '30 Oct',
);

final List<Course> courses = [
  _course1,
  _course2,
  _course3,
  _course4,
  _course5,
  _course6,
  _course7,
  _course8,
  _course9,
  _course10,
  _course11,
  _course12,
];
