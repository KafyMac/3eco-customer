import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:three_eco_customer_flow/page/addCustomers.dart';
import 'package:three_eco_customer_flow/page/cart_screen.dart';

import '../Screens/View_suppliers.dart';

class PurchaseScreen extends StatefulWidget {
  const PurchaseScreen({Key? key}) : super(key: key);

  @override
  State<PurchaseScreen> createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(242, 240, 255, 1),
          foregroundColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(7, 8, 0, 6),
            child: Image.asset('assets/images/appLogo.png'),
          ),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 9, 0, 5),
            child: Text('Purchase',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                )),
          ),
          elevation: 0,
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Get.to(AddCart());
                },
                icon: Image.asset(
                  "assets/images/cart.png",
                  height: 23,
                  width: 23,
                  // color: Color.fromRGBO(45, 12, 179, 1),
                )),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/notifications2.png",
                height: 23,
                width: 23,
                // color: Color.fromRGBO(45, 12, 179, 1),
              ),
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(12, 16, 12, 16),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.only(top: 13),
                  hintText: 'Search',
                  hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      'assets/images/search.png',
                      width: 1,
                      height: 1,
                      fit: BoxFit.fill,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.white)),
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 173, 171, 171)),
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(09, 0, 09, 16),
              child: Card(
                elevation: 0,
                color: Color.fromRGBO(229, 225, 255, 1),
                child: SizedBox(
                  height: 49,
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: [
                        Text(
                          'Today',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(90, 90, 90, 1),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 45,
                          child: (Image.asset(
                            'assets/images/sort.png',
                            scale: 2,
                            color: Color.fromRGBO(90, 90, 90, 1),
                          )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          heroTag: "btn2",
          child: Icon(Icons.add, size: 33),
          backgroundColor: const Color.fromRGBO(45, 12, 179, 1),
          tooltip: 'Add Purchase',
        ));
  }
}
