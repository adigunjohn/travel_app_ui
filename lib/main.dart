import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: const MaterialApp(
        home: FirstScreen(),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Inverter Sizing'),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 10.0, bottom: 10.0, right: 15.0, left: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Text('Inverter Sizing', style: TextStyle(fontSize: 20.0),),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      elevation: 5.0,

                      child: Container(
                        height: MediaQuery.of(context).size.height / 2,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Real Power',
                                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  ' 8950 Watts',
                                  style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Power Factor Used',
                                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  '70%',
                                  style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Apparent Power',
                                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  ' 9250 VA',
                                  style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Inverter Size',
                                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  ' 11 KVA ',
                                  style: TextStyle(color: Colors.black, fontSize: 22.0,fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    const Text(
                      'System voltage',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextField(
                      // keyboardType: TextInputType.number,
                      // textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        hintText: 'Input system voltage i.e 24V',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(19.0),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(19.0),
                          ),
                          borderSide: BorderSide(color: Colors.blue, width: 1.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(19.0),
                          ),
                          borderSide: BorderSide(color: Colors.blue, width: 1.5),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ],
                ),
                // SizedBox(height: 15.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Text(
                          'Next Step',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

