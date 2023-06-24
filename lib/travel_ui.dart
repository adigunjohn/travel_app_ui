import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app_ui/provider/ecommerce_provider.dart';

int currentIndex = 0;

class TravelUiScreen extends StatefulWidget {
  const TravelUiScreen({Key? key}) : super(key: key);

  @override
  State<TravelUiScreen> createState() => _TravelUiScreenState();
}

class _TravelUiScreenState extends State<TravelUiScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<EcommerceUiModel>(builder: (context, model, child) {
      return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 12.0, bottom: 1.0, right: 12.0, left: 12.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 1.0, horizontal: 10.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Icon(
                                  Icons.menu_open_outlined,
                                  color: Colors.black,
                                  size: 30.0,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 35,
                              ),
                              Container(
                                child: Icon(
                                  Icons.safety_check,
                                  color: Colors.black,
                                  size: 30.0,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.black,
                              size: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 1.0, horizontal: 10.0),
                      child: Container(
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            '20%',
                                            style: TextStyle(fontSize: 30.0),
                                          ),
                                          SizedBox(
                                            width: 3.0,
                                          ),
                                          Text(
                                            'Discount',
                                            style: TextStyle(fontSize: 20.0),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'on your first purchase',
                                        style: TextStyle(),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 37.0,
                                    child: Material(
                                      borderRadius: BorderRadius.circular(15.0),
                                      color: Colors.black,
                                      child: MaterialButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Shop now',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    'images/nft1.png',
                                    // scale: 9.0,
                                    // fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                 Expanded(
                     flex: 10,
                     child: Container()),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

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

class ListWidget extends StatelessWidget {
  // const ListWidget({required this.text ,Key? key}) : super(key: key);
  ListWidget({
    required this.text,
    this.onpressed,
  });
  final String? text;
  final void Function()? onpressed;
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
          decoration: currentIndex == 0
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
              style: currentIndex == 0
                  ? TextStyle(color: Colors.white)
                  : TextStyle(color: Colors.grey),
            ),
          )),
        ),
      ),
    );
  }
}
