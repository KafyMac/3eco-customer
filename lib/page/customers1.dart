import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:three_eco_customer_flow/page/addCustomers.dart';

import '../Screens/View_suppliers.dart';

class Customer extends StatefulWidget {
  const Customer({Key? key}) : super(key: key);

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 231, 227, 245),
        foregroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(7, 8, 0, 6),
          child: Image.asset('assets/images/appLogo.png'),
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 9, 0, 5),
          child: Text('Customers',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              )),
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
              onPressed: () {},
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
                hintText: 'Search By Customer Name',
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
          GestureDetector(
            onTap: () {
              Get.to(() => const ViewSupplierScreen());
            },
            child: Card(
              elevation: 3,
              shadowColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: SizedBox(
                width: Get.width / 1.065,
                height: 60,
                child: Row(
                  children: <Widget>[
                    // Texts
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: SizedBox(
                              width: Get.width / 1.6,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'Shubhank Singhh',
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: const Color.fromRGBO(
                                                  90, 90, 90, 1)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Hindustan Unilever Ltd',
                                        style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
                                            color: const Color.fromRGBO(
                                                90, 90, 90, 1)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Card

                    Container(
                      // color: Colors.black,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(233, 247, 228, 1),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                      // elevation: 0,
                      // clipBehavior: Clip.antiAliasWithSaveLayer,
                      // margin: EdgeInsets.all(0.0),
                      child: SizedBox(
                        width: 104,
                        height: 60,
                        // color: Color.fromRGBO(233, 247, 228, 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/images/verified.png',
                              width: 15,
                              height: 15,
                              // fit: BoxFit.fill,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text('Verified',
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromRGBO(76, 187, 37, 1))),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // IconButton(
          //     onPressed: () {
          //       Get.to(() => const ViewSupplierScreen());
          //     },
          //     icon: Icon(Icons.face))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const AddCustomers());
        },
        child: Icon(Icons.add, size: 33),
        backgroundColor: const Color.fromRGBO(45, 12, 179, 1),
        tooltip: 'Add Customers',
      ),
    );
  }
}
