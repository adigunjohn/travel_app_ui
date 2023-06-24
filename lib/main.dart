import 'package:flutter/material.dart';
import 'package:travel_app_ui/ecommerce_ui.dart';
import 'package:travel_app_ui/firstscreen.dart';
import 'package:travel_app_ui/provider/ecommerce_provider.dart';
import 'package:travel_app_ui/travel_ui.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<EcommerceUiModel>(create: (context) { return EcommerceUiModel();})
      ],
      child: const MaterialApp(
        home: TravelUiScreen(),
      ),
    );
  }
}


