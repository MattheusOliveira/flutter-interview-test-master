import 'package:flutter/material.dart';
import 'package:flutter_interview_test/pages/policy/policy_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "/": (context) => FirstScreenPage(),
        //"/secondScreenPage": (context) => SecondScreenPage()
      },
    );
  }
}

// class FirstScreen extends StatefulWidget {
//   FirstScreen({Key key}) : super(key: key);

//   @override
//   _FirstScreenState createState() => _FirstScreenState();
// }

// class _FirstScreenState extends State<FirstScreen> {
//   final policies = [
//     Policy(
//       1,
//       'Land Rover Range Rover Evoque 2.0 SI4 R-Dynamic SE 4WD 2020 (Gasolina / Flex)',
//       'YOU-0000',
//       'auto',
//       'https://cdn.youse.com.br/app/images/products/auto.png',
//     ),
//     Policy(
//       2,
//       'Av Brigadeiro Faria Lima',
//       'SP',
//       'home',
//       'https://cdn.youse.com.br/app/images/products/home.png',
//     ),
//     Policy(
//       3,
//       'JOHN',
//       '30 anos',
//       'life',
//       'https://cdn.youse.com.br/app/images/products/life.png',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('FLUTTER INTERVIEW TEST'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ListTile(
//               title: Row(
//                 children: [
//                   Image.network(
//                     policies[0].image_url,
//                     width: 250,
//                   ),
//                   Text('${policies[0].title} - ${policies[0].subtitle}'),
//                 ],
//               ),
//               subtitle: Text(policies[0].type),
//             ),
//             Divider(),
//             ListTile(
//               title: Row(
//                 children: [
//                   Image.network(
//                     policies[1].image_url,
//                     width: 250,
//                   ),
//                   Text('${policies[1].title} - ${policies[1].subtitle}'),
//                 ],
//               ),
//               subtitle: Text(policies[1].type),
//             ),
//             Divider(),
//             ListTile(
//               title: Row(
//                 children: [
//                   Image.network(
//                     policies[2].image_url,
//                     width: 250,
//                   ),
//                   Text('${policies[2].title} - ${policies[2].subtitle}'),
//                 ],
//               ),
//               subtitle: Text(policies[2].type),
//             ),
//           ],
//         ),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
//}

// class Policy {
//   int policyNumber;
//   String title;
//   String subtitle;
//   String type;
//   String image_url;

//   Policy(
//     this.policyNumber,
//     this.title,
//     this.subtitle,
//     this.type,
//     this.image_url,
//   );
// }
