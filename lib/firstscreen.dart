import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({required this.text, required this.textt, Key? key})
      : super(key: key);
  final String? text;
  final String? textt;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'images/nft1.png',
                    scale: 9.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        text.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        textt.toString(),
                        style: TextStyle(),
                      ),
                      Container(
                        padding: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.black,
                          size: 18.0,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}








//
// class FirstScreen extends StatelessWidget {
//   const FirstScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return  GestureDetector(
//       onTap: (){
//         FocusScopeNode currentFocus = FocusScope.of(context);
//         if (!currentFocus.hasPrimaryFocus) {
//           currentFocus.unfocus();
//         }
//         print('tapped from FirstScreen');
//       },
//       child: Scaffold(
//         // resizeToAvoidBottomInset: false,
//         appBar: AppBar(
//           title: const Text('Inverter Sizing'),
//         actions: [
//           IconButton(onPressed: (){
//             Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
//           },icon: Icon(Icons.navigate_next_rounded))
//         ],),
//         body: SafeArea(
//             child: SingleChildScrollView(
//               physics: ClampingScrollPhysics(parent: NeverScrollableScrollPhysics()),
//               child: Container(
//                 height: MediaQuery.of(context).size.height - 90,
//                 child: Padding(
//                   padding: const EdgeInsets.only(
//                       top: 10.0, bottom: 10.0, right: 15.0, left: 15.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       // Text('Inverter Sizing', style: TextStyle(fontSize: 20.0),),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: [
//                           Material(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(12.0),
//                             elevation: 5.0,
//
//                             child: Container(
//                               height: MediaQuery.of(context).size.height / 2,
//                               child: const Column(
//                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   Column(
//                                     children: [
//                                       Text(
//                                         'Real Power',
//                                         style: TextStyle(color: Colors.black, fontSize: 18.0),
//                                       ),
//                                       SizedBox(height: 5.0,),
//                                       Text(
//                                         ' 8950 Watts',
//                                         style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
//                                       ),
//                                     ],
//                                   ),
//                                   Column(
//                                     children: [
//                                       Text(
//                                         'Power Factor Used',
//                                         style: TextStyle(color: Colors.black, fontSize: 18.0),
//                                       ),
//                                       SizedBox(height: 5.0,),
//                                       Text(
//                                         '70%',
//                                         style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
//                                       ),
//                                     ],
//                                   ),
//                                   Column(
//                                     children: [
//                                       Text(
//                                         'Apparent Power',
//                                         style: TextStyle(color: Colors.black, fontSize: 18.0),
//                                       ),
//                                       SizedBox(height: 5.0,),
//                                       Text(
//                                         ' 9250 VA',
//                                         style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
//                                       ),
//                                     ],
//                                   ),
//                                   Column(
//                                     children: [
//                                       Text(
//                                         'Inverter Size',
//                                         style: TextStyle(color: Colors.black, fontSize: 18.0),
//                                       ),
//                                       SizedBox(height: 5.0,),
//                                       Text(
//                                         ' 11 KVA ',
//                                         style: TextStyle(color: Colors.black, fontSize: 22.0,fontWeight: FontWeight.bold),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 30.0),
//                           const Text(
//                             'System voltage',
//                             style: TextStyle(fontSize: 20.0),
//                           ),
//                           const SizedBox(
//                             height: 8.0,
//                           ),
//                           TextField(
//                             // keyboardType: TextInputType.number,
//                             // textAlign: TextAlign.center,
//                             style: const TextStyle(color: Colors.black),
//                             decoration: const InputDecoration(
//                               hintText: 'Input system voltage i.e 24V',
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
//                             onChanged: (value) {},
//                           ),
//                         ],
//                       ),
//                       // SizedBox(height: 20.0,),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Container(
//                             decoration: BoxDecoration(
//                                 color: Colors.blue,
//                                 borderRadius: BorderRadius.circular(20.0)),
//                             child: MaterialButton(
//                               onPressed: () {},
//                               child: const Text(
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
//               ),
//             )),
//       ),
//     );
//   }
// }