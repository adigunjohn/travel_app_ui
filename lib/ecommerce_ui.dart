import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app_ui/provider/ecommerce_provider.dart';
import 'package:travel_app_ui/firstscreen.dart';
import 'package:travel_app_ui/secondscreen.dart';

class EcomScreen extends StatefulWidget {
  const EcomScreen({Key? key}) : super(key: key);

  @override
  State<EcomScreen> createState() => _EcomScreenState();
}

class _EcomScreenState extends State<EcomScreen> {
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
                    flex: 1,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: model.listListCount,
                        itemBuilder: (context, index) {
                          var checkk = model.listList[index];
                          return ListWidget(
                            text: checkk.text,
                            onpressed: () {

                            },
                          );
                        }),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                      flex: 10,
                      child: GridView.builder(
                          physics: BouncingScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, mainAxisExtent: 185.0),
                          itemCount: model.gridListCount,
                          itemBuilder: (context, index) {
                            var check = model.gridList[index];
                            return GridWidget(
                              text: check.text,
                              textt: check.textt,
                            );
                          })),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
