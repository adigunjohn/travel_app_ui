import 'package:flutter/material.dart';

class TextFieldTest extends StatelessWidget {
  const TextFieldTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onTap: (){
        // FocusScopeNode currentFocus = FocusScope.of(context);
        // if (!currentFocus.hasPrimaryFocus) {
        //   currentFocus.unfocus();
        // }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('TextField Test'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 6.0, top: 1.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Container(),
                  ],
                ),
              ),
              Container(
                // width: MediaQuery.sizeOf(context).width,
                // width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Expanded(
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: 6,
                          minLines: 1,
                          // textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: 'Message',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(19.0),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(19.0),
                              ),
                              borderSide: BorderSide(color: Colors.black, width: 1.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(19.0),
                              ),
                              borderSide: BorderSide(color: Colors.black, width: 1.5),
                            ),
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: CircleAvatar(
                       backgroundColor: Colors.black,
                       radius: 25,
                       child: Icon(Icons.keyboard_voice_outlined, color: Colors.white, size: 30,),
                     ),
                   )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


// TextField(
//                           keyboardType: TextInputType.number,
//                           // textAlign: TextAlign.center,
//                           style: TextStyle(color: Colors.black),
//                           decoration: InputDecoration(
//                             hintText: 'unit(s)',
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(19.0),
//                               ),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(19.0),
//                               ),
//                               borderSide: BorderSide(color: Colors.blue, width: 1.5),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(19.0),
//                               ),
//                               borderSide: BorderSide(color: Colors.blue, width: 1.5),
//                             ),),
//                           onChanged: (value) {
//                             yeahh = value;
//                             model.getUnit(yeahh.toString());
//                           },
//                         ),