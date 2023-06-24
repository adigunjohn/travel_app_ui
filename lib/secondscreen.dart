import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  // const ListWidget({required this.text ,Key? key}) : super(key: key);
  ListWidget({required this.text,this.onpressed,});
  final String? text;
  final void Function()? onpressed;
  bool tapped = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: GestureDetector(
        onTap: onpressed,
          // setState(() {
          //   if (tapped == true) {
          //     tapped = false;
          //   }
          //   else{ tapped = true; }
          //   // if (tapped == false) {
          //   //   tapped = true;
          //   // }
          // });

        child: Container(
          decoration: tapped == true
              ? BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(16.0))
              : BoxDecoration(),
          child: Center(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
                child: Text(
                 '${text}',
                  style: tapped == true
                      ? TextStyle(color: Colors.white)
                      : TextStyle(color: Colors.grey),
                ),
              )),
        ),
      ),
    );
  }
}












//
// class SecondScreen extends StatefulWidget {
//   const SecondScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SecondScreen> createState() => _SecondScreenState();
// }
//
// class _SecondScreenState extends State<SecondScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: (){
//         FocusScopeNode currentFocus = FocusScope.of(context);
//         if (!currentFocus.hasPrimaryFocus) {
//           currentFocus.unfocus();
//         }
//         print('tapped from SecondScreen');
//       },
//       child: Scaffold(
//         // resizeToAvoidBottomInset: false,
//         appBar: AppBar(
//           title: Text('Battery Sizing'),
//         ),
//         body: SafeArea(
//           child: SingleChildScrollView(
//             physics: ClampingScrollPhysics(parent: NeverScrollableScrollPhysics()),
//               child: Container(
//                 height: MediaQuery.of(context).size.height - 90,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         children: [
//                           Material(
//                             color: Colors.white,
//                             elevation: 5.0,
//                             borderRadius: BorderRadius.circular(15.0),
//                             child: Container(
//                               height: MediaQuery.of(context).size.height / 3.5,
//                               width: MediaQuery.of(context).size.width,
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                 children: [
//
//                                   Column(
//                                     children: [
//                                       Text(
//                                         'Depth of Dischage -- DOD',
//                                         style: TextStyle(color: Colors.black, fontSize: 18.0),
//                                       ),
//                                       SizedBox(height: 5.0,),
//                                       Text(
//                                         '70%',
//                                         style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
//                                       ),
//                                     ],
//                                   ),
//                                   Column(
//                                     children: [
//                                       Text(
//                                         'Battery Size',
//                                         style: TextStyle(color: Colors.black, fontSize: 18.0),
//                                       ),
//                                       SizedBox(height: 5.0,),
//                                       Text(
//                                         ' 400 AH',
//                                         style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 23),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 30.0),
//                           Text(
//                             'Battery Details Suggestions',
//                             style: TextStyle(fontSize: 20.0),
//                           ),
//                           SizedBox(
//                             height: 12.0,
//                           ),
//                           TextField(
//                             keyboardType: TextInputType.number,
//                             // textAlign: TextAlign.center,
//                             style: TextStyle(color: Colors.black),
//                             decoration: InputDecoration(
//                               hintText: 'approximated battery size(Ah) i.e 400Ah ',
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.all(
//                                   Radius.circular(19.0),
//                                 ),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.all(
//                                   Radius.circular(19.0),
//                                 ),
//                                 borderSide: BorderSide(color: Colors.blue, width: 1.5),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.all(
//                                   Radius.circular(19.0),
//                                 ),
//                                 borderSide: BorderSide(color: Colors.blue, width: 1.5),
//                               ),
//                             ),
//                             onChanged: (value) {
//                             },
//                           ),
//                           SizedBox(
//                             height: 8.0,
//                           ),
//                           TextField(
//                             keyboardType: TextInputType.number,
//                             // textAlign: TextAlign.center,
//                             style: TextStyle(color: Colors.black),
//                             decoration: InputDecoration(
//                               hintText: 'number of batteries i.e 5 pieces of battery',
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.all(
//                                   Radius.circular(19.0),
//                                 ),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.all(
//                                   Radius.circular(19.0),
//                                 ),
//                                 borderSide: BorderSide(color: Colors.blue, width: 1.5),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.all(
//                                   Radius.circular(19.0),
//                                 ),
//                                 borderSide: BorderSide(color: Colors.blue, width: 1.5),
//                               ),
//                             ),
//                             onChanged: (value) {
//                             },
//                           ),
//                           SizedBox(
//                             height: 8.0,
//                           ),
//                           TextField(
//                             keyboardType: TextInputType.number,
//                             // textAlign: TextAlign.center,
//                             style: TextStyle(color: Colors.black),
//                             decoration: InputDecoration(
//                               hintText: 'battery size to be used i.e 100Ah',
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.all(
//                                   Radius.circular(19.0),
//                                 ),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.all(
//                                   Radius.circular(19.0),
//                                 ),
//                                 borderSide: BorderSide(color: Colors.blue, width: 1.5),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.all(
//                                   Radius.circular(19.0),
//                                 ),
//                                 borderSide: BorderSide(color: Colors.blue, width: 1.5),
//                               ),
//                             ),
//                             onChanged: (value) {
//                             },
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 15.0,
//                       ),
//                       Column(
//                         children: [
//                           Container(
//                             width: MediaQuery.of(context).size.width,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20.0),
//                                 color: Colors.blue),
//                             child: MaterialButton(
//                               onPressed: () {
//                               },
//                               child: Text(
//                                 'Next Step',
//                                 style: TextStyle(color: Colors.white, fontSize: 15.0),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               )),
//         ),
//       ),
//     );
//   }
// }
