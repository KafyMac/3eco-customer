import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:three_eco_customer_flow/page/add_address.dart';

import '../page/add_documents.dart';

class ViewSupplierScreen extends StatelessWidget {
  const ViewSupplierScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 231, 227, 245),
        foregroundColor: Colors.black,
        title: Text(
          "Add New Customers",
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(12, 16, 12, 16),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'Contact Person',
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    alignment: Alignment.centerRight,
                    icon: Image.asset(
                      'assets/images/edit.png',
                      width: 13,
                      height: 13,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Get.dialog(
                  const AlertDialog(
                    insetPadding: EdgeInsets.symmetric(horizontal: 16),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 1,
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    // content: AddContactPerson(),
                    // content: const AddContactPerson(),
                    // title: "",
                  ),
                ),
                child: Card(
                  child: SizedBox(
                    // height: Get.height / 4.0,
                    // width: 400,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 16, bottom: 16),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Full Name',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Mahesh Singh',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Contact Number',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '+91 9861263523',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Email',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'mahesh.singh@gmail.com',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'Company',
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    alignment: Alignment.centerRight,
                    icon: Image.asset(
                      'assets/images/edit.png',
                      width: 13,
                      height: 13,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Get.dialog(
                  const AlertDialog(
                    insetPadding: EdgeInsets.symmetric(horizontal: 16),
                    // contentPadding: EdgeInsets.symmetric(
                    // //   horizontal: 1,
                    // ),
                    // clipBehavior: Clip.antiAliasWithSaveLayer,
                    // content:,
                    // content: const AddContactPerson(),
                    // title: "",
                  ),
                ),
                child: Card(
                  child: SizedBox(
                    // height: Get.height / 3.0,
                    // width: 400,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 16, bottom: 16),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Name',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Udupi Thindi',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Email',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'ut@gmail.com',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'GST',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '1234ZXCVB45678LW42',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Type',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Food',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Documents',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(DocumentScreen());
                },
                child: Card(
                  elevation: 3,
                  shadowColor: Colors.white,
                  child: SizedBox(
                    height: 80,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16, top: 16, bottom: 16, right: 10),
                      child: Row(
                        children: [
                          Image.asset('assets/images/companyID.jpg'),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Company ID.png',
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          IconButton(
                            alignment: Alignment.centerRight,
                            icon: Image.asset(
                              'assets/images/delete.png',
                              width: 13,
                              height: 13,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(DocumentScreen());
                },
                child: Card(
                  elevation: 3,
                  shadowColor: Colors.white,
                  child: SizedBox(
                    height: 80,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16, top: 16, bottom: 16, right: 10),
                      child: Row(
                        children: [
                          Image.asset('assets/images/pan.jpg'),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'PAN Card.png',
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          IconButton(
                            alignment: Alignment.centerRight,
                            icon: Image.asset(
                              'assets/images/delete.png',
                              width: 13,
                              height: 13,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(DocumentScreen());
                },
                child: Card(
                  elevation: 3,
                  shadowColor: Colors.white,
                  child: SizedBox(
                    height: 80,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16, top: 16, bottom: 16, right: 10),
                      child: Row(
                        children: [
                          Image.asset('assets/images/gst.jpg'),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'GST Certificate.jpeg',
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          IconButton(
                            alignment: Alignment.centerRight,
                            icon: Image.asset(
                              'assets/images/delete.png',
                              width: 13,
                              height: 13,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'Address',
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        Get.to(AddressScreen());
                      },
                      child: Text(
                        '+ Add Another Address',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(45, 12, 179, 1)),
                      )),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/edit.png',
                    width: 13,
                    height: 13,
                    alignment: Alignment.bottomRight,
                  ),
                ),
              ]),
              GestureDetector(
                onTap: () {
                  Get.to(AddressScreen());
                },
                child: Card(
                  child: SizedBox(
                    // height: Get.height / 3.0,
                    // width: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16, top: 16, bottom: 16, right: 10),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Address',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '''#34/7, 7th Main, Opposite 
Meenakshi Mall Bannerghetta Road.''',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Landmark/Area',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'JP Nagar',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'City',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Bengaluru',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'City',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Karnataka',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'PIN',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '560085',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 396,
                height: 62,
                child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      'Done',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Color.fromRGBO(45, 12, 179, 1),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
