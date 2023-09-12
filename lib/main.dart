import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int boxValue = 0;

  List<dynamic> texts = [
    Quote(text: "Word War", author: "WZ"),
    Quote(text:"War War War", author:"MW3"),
    Quote(text:"Car pe diem", author:"Dead Poet Society"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Flutter Peeps!"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: texts.map((quotes) => QuoteCard(
          quote: quotes,
          delete: () {
            setState(() {
              texts.remove(quotes);
            });
          },
        )).toList(),
      ),
      // body: Center(
      //   //setting a text
      //   // child: Text(
      //   //   "Hello Peeps!!!!",
      //   //   style: TextStyle(
      //   //     fontSize: 20.0,
      //   //     fontWeight: FontWeight.bold,
      //   //     letterSpacing: 2.0,
      //   //     fontFamily: 'Roboto'
      //   //   ),
      //   // ),
      //   //Setting an Image
      //   // child: Image(
      //   //   image: AssetImage("assets/sky1.jpg"),
      //   // ),
      //   //Icons
      //   // child: Icon(
      //   //   Icons.airport_shuttle,
      //   //   color: Colors.lightBlue,
      //   //   size: 40.0,
      //   // ),
      //   //
      //   //elevated button
      //   // child: ElevatedButton(
      //   //   onPressed: () {
      //   //     print("Button Button");
      //   //   },
      //   //   style: ElevatedButton.styleFrom(
      //   //     backgroundColor: Colors.amber,
      //   //     disabledBackgroundColor: Colors.amberAccent,
      //   //   ),
      //   //   child: const Text(
      //   //     "Click Me",
      //   //     style: TextStyle(
      //   //       color: Colors.black
      //   //     ),
      //   //   ),
      //   // ),
      //   //Elevated Icon Button
      //   // child: ElevatedButton.icon(
      //   //   onPressed: () {
      //   //     print("Click Me");
      //   //   },
      //   //   icon: const Icon(
      //   //     Icons.email,
      //   //   ),
      //   //   label: const Text(
      //   //     "Send Email",
      //   //     style: TextStyle(
      //   //       color: Colors.black,
      //   //     ),
      //   //   ),
      //   //   style: ElevatedButton.styleFrom(
      //   //     backgroundColor: Colors.amber,
      //   //   ),
      //   // ),
      //   //Icon buttons
      //   // child: IconButton(
      //   //   onPressed: () {
      //   //     print("Clicked ME!");
      //   //   },
      //   //   icon: Icon(Icons.alternate_email),
      //   //   iconSize: 40.0,
      //   // ),
      //   // child: Container(
      //   //   color: Colors.greenAccent[200],
      //   //   padding: const EdgeInsets.all(20.0),
      //   //   margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      //   //   child: const Text(
      //   //     "Hello Flutter People",
      //   //     style: TextStyle(
      //   //       fontSize: 25.0,
      //   //       fontFamily: "Roboto",
      //   //       fontWeight: FontWeight.bold,
      //   //     ),
      //   //   ),
      //   // ),
      //
      //   //rows and columns
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       const Text(
      //         "Hello Flutter People",
      //         style: TextStyle(
      //           fontSize: 10.0,
      //           fontFamily: "Roboto"
      //         ),
      //       ),
      //       ElevatedButton(
      //         onPressed: () {
      //           print("Hello Lachin");
      //         },
      //         child: Text("Get Response"),
      //       ),
      //       Container(
      //         color: Colors.cyanAccent,
      //         padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      //         child: const Text(
      //           "Hello World"
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Container(
      //       padding: const EdgeInsets.all(10.0),
      //       color: Colors.amber,
      //       child: const Text("Number 01"),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(20.0),
      //       color: Colors.green,
      //       child: const Text("Number 02"),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(30.0),
      //       color: Colors.lightBlue,
      //       child: const Text("Number 03"),
      //     ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           padding: const EdgeInsets.all(10.0),
      //           color: Colors.pinkAccent,
      //           child: const Text("Row 03"),
      //         ),
      //         Container(
      //           padding: const EdgeInsets.all(10.0),
      //           color: Colors.deepOrange,
      //           child: const Text("Row 03"),
      //         ),
      //         Container(
      //           padding: const EdgeInsets.all(10.0),
      //           color: Colors.brown,
      //           child: const Text("Row 03"),
      //         ),
      //       ],
      //     )
      //   ],
      // ),
      //expanded widget
      // body: Column(
      //   children: [
      //     Row(
      //       children: <Widget>[
      //         Expanded(
      //           flex: 1,
      //           child: Container(
      //             padding: const EdgeInsets.all(10.0),
      //             color: Colors.green,
      //             child: Text((boxValue > 10) ? "Passed the test":"Failed the test"),
      //           ),
      //         ),
      //         Expanded(
      //           flex: 1,
      //           child: Container(
      //             padding: const EdgeInsets.all(10.0),
      //             color: Colors.brown,
      //             child: Text((boxValue < 10) ? "Well Done!": "Howdy???"),
      //           ),
      //         ),
      //         Expanded(
      //           flex: 1,
      //           child: Container(
      //             padding: const EdgeInsets.all(10.0),
      //             color: Colors.pinkAccent,
      //             child: Text('$boxValue'),
      //           ),
      //         ),
      //       ],
      //     ),
      //     const SizedBox(
      //       height: 10.0,
      //     ),
      //     ElevatedButton(
      //       onPressed: () {
      //         setState(() {
      //           boxValue += 1;
      //         });
      //       },
      //       child: const Text("Change Text"),
      //     )
      //   ],
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     print("Hello Lachin!");
      //   },
      //   child: const Text(
      //     "Click",
      //     style: TextStyle(
      //       color: Colors.black
      //     ),
      //   ),
      // ),
    );
  }
}





