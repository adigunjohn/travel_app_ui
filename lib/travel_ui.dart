import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app_ui/provider/ecommerce_provider.dart';
import 'package:flutter/services.dart';
import 'package:travel_app_ui/textfield_screen.dart';

int currentIndex = 0;

class TravelUiScreen extends StatefulWidget {
  const TravelUiScreen({Key? key}) : super(key: key);

  @override
  State<TravelUiScreen> createState() => _TravelUiScreenState();
}

class _TravelUiScreenState extends State<TravelUiScreen> {
  woah() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        padding: EdgeInsets.all(10.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        behavior: SnackBarBehavior.floating,
        width: 200.0,
        backgroundColor: Colors.black,
        content: Center(
          child: Container(
            color: Colors.black,
            child: Text('Back button pressed'),
          ),
        ),
      ),
    );
    // null;
  }

  woahh(){
    return showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('EXIT'),
      content: Text(' Do you want to exit the app?'),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: (){
              SystemNavigator.pop();
              // Navigator.of(context).pop(false);
              // Navigator.pop(context);
            }, child: Text('Yes'),),
            TextButton(onPressed: (){
              // SystemNavigator.pop();
              // Navigator.of(context).pop(false);
              Navigator.pop(context);
            }, child: Text('No'),),
          ],
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<EcommerceUiModel>(builder: (context, model, child) {
      return DefaultTabController(
        length: 8,
        child: WillPopScope(
          onWillPop: () {
            print('Back button clicked');
            woah();
            // return woah();
            return woahh();
          },
          child: Scaffold(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(3.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => TextFieldTest()));
                                      },
                                      child: Icon(
                                        Icons.menu_open_outlined,
                                        color: Colors.black,
                                        size: 30.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 35,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                                style:
                                                    TextStyle(fontSize: 30.0),
                                              ),
                                              SizedBox(
                                                width: 3.0,
                                              ),
                                              Text(
                                                'Discount',
                                                style:
                                                    TextStyle(fontSize: 20.0),
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
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          color: Colors.black,
                                          child: MaterialButton(
                                            onPressed: () {},
                                            child: Text(
                                              'Shop now',
                                              style: TextStyle(
                                                  color: Colors.white),
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
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: double.maxFinite,
                                  child: TabBar(
                                    isScrollable: true,
                                    // physics: BouncingScrollPhysics(),
                                    // padding: EdgeInsets.all(10),
                                    labelColor: Colors.white,
                                    unselectedLabelColor: Colors.grey,
                                    labelPadding: EdgeInsets.only(
                                        left: 15.0,
                                        right: 15.0,
                                        top: 1.0,
                                        bottom: 1.0),
                                    // indicatorColor: Colors.red,
                                    // indicatorSize: TabBarIndicatorSize.label,
                                    indicatorWeight: 3.0,
                                    // indicator:  BoxDecoration(),
                                    indicator: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Colors.black,
                                    ),
                                    // indicatorPadding: EdgeInsets.all(5.0),
                                    tabs: [
                                      Tab(
                                        text: 'All',
                                        // child: Text('yohh'),
                                        // icon: Icon(Icons.construction, color: Colors.black,),
                                      ),
                                      Tab(
                                        text: 'Formal',
                                        // icon: Icon(Icons.home_filled, color: Colors.black,),
                                      ),
                                      Tab(
                                        text: 'Running',
                                        // icon: Icon(Icons.home_filled, color: Colors.black,),
                                      ),
                                      Tab(
                                        text: 'Gym',
                                        // icon: Icon(Icons.home_filled, color: Colors.black,),
                                      ),
                                      Tab(
                                        text: 'Suit Wear',
                                        // icon: Icon(Icons.home_filled, color: Colors.black,),
                                      ),
                                      Tab(
                                        text: 'Informal',
                                        // icon: Icon(Icons.home_filled, color: Colors.black,),
                                      ),
                                      Tab(
                                        text: 'yoh',
                                        // icon: Icon(Icons.home_filled, color: Colors.black,),
                                      ),
                                      Tab(
                                        text: 'yoh',
                                        // icon: Icon(Icons.home_filled, color: Colors.black,),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Expanded(
                                  child: Container(
                                    // height: 200,
                                    // width: double.maxFinite,
                                    child: TabBarView(
                                      children: [
                                        GridView.builder(
                                            // scrollDirection: Axis.horizontal,
                                            physics: BouncingScrollPhysics(),
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    mainAxisExtent: 185.0),
                                            itemCount: model.gridListCountt,
                                            itemBuilder: (context, index) {
                                              var check =
                                                  model.gridListt[index];
                                              return GridWidget(
                                                text: check.text,
                                                textt: check.textt,
                                              );
                                            }),
                                        GridView.builder(
                                            physics: BouncingScrollPhysics(),
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    mainAxisExtent: 185.0),
                                            itemCount: model.gridListCount,
                                            itemBuilder: (context, index) {
                                              var check = model.gridList[index];
                                              return GridWidget(
                                                text: check.text,
                                                textt: check.textt,
                                              );
                                            }),
                                        GridView.builder(
                                            // scrollDirection: Axis.horizontal,
                                            physics: BouncingScrollPhysics(),
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    mainAxisExtent: 185.0),
                                            itemCount: model.gridListCountt,
                                            itemBuilder: (context, index) {
                                              var check =
                                                  model.gridListt[index];
                                              return GridWidget(
                                                text: check.text,
                                                textt: check.textt,
                                              );
                                            }),
                                        GridView.builder(
                                            physics: BouncingScrollPhysics(),
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    mainAxisExtent: 185.0),
                                            itemCount: model.gridListCount,
                                            itemBuilder: (context, index) {
                                              var check = model.gridList[index];
                                              return GridWidget(
                                                text: check.text,
                                                textt: check.textt,
                                              );
                                            }),
                                        GridView.builder(
                                            // scrollDirection: Axis.horizontal,
                                            physics: BouncingScrollPhysics(),
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    mainAxisExtent: 185.0),
                                            itemCount: model.gridListCountt,
                                            itemBuilder: (context, index) {
                                              var check =
                                                  model.gridListt[index];
                                              return GridWidget(
                                                text: check.text,
                                                textt: check.textt,
                                              );
                                            }),
                                        GridView.builder(
                                            physics: BouncingScrollPhysics(),
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    mainAxisExtent: 185.0),
                                            itemCount: model.gridListCount,
                                            itemBuilder: (context, index) {
                                              var check = model.gridList[index];
                                              return GridWidget(
                                                text: check.text,
                                                textt: check.textt,
                                              );
                                            }),
                                        GridView.builder(
                                            // scrollDirection: Axis.horizontal,
                                            physics: BouncingScrollPhysics(),
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    mainAxisExtent: 185.0),
                                            itemCount: model.gridListCountt,
                                            itemBuilder: (context, index) {
                                              var check =
                                                  model.gridListt[index];
                                              return GridWidget(
                                                text: check.text,
                                                textt: check.textt,
                                              );
                                            }),
                                        GridView.builder(
                                            physics: BouncingScrollPhysics(),
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    mainAxisExtent: 185.0),
                                            itemCount: model.gridListCount,
                                            itemBuilder: (context, index) {
                                              var check = model.gridList[index];
                                              return GridWidget(
                                                text: check.text,
                                                textt: check.textt,
                                              );
                                            }),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      // Text('yello')
                    ],
                  ),
                ),
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
