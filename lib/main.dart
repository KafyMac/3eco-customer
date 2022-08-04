import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:three_eco_customer_flow/Screens/3eco_customers.dart';
import 'package:three_eco_customer_flow/Screens/View_suppliers.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(242, 240, 255, 1)));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '3eco Cutomer Page',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(242, 240, 255, 1),
        // iconTheme: const IconThemeData(
        //   color: Colors.black,
        // ),
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const CustomerScreens()),
      ],
    );
  }
}
