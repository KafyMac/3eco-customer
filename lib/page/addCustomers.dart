import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:three_eco_customer_flow/page/add_address.dart';
import 'package:three_eco_customer_flow/page/add_company.dart';
import 'package:three_eco_customer_flow/page/add_contact_person.dart';
import 'package:get/get.dart';

import 'add_documents.dart';

class AddCustomers extends StatelessWidget {
  const AddCustomers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(242, 240, 255, 1),
        foregroundColor: Colors.black,
        title: Text(
          'Add New Customers',
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            margin: const EdgeInsets.fromLTRB(12, 16, 12, 16),
            child: Column(
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
                const SizedBox(height: 6),
                GestureDetector(
                  onTap: () => Get.dialog(
                    const AlertDialog(
                      insetPadding: EdgeInsets.symmetric(horizontal: 16),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 1,
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      content: AddContactPerson(),
                      // content: const AddContactPerson(),
                      // title: "",
                    ),
                  ),
                  child: Card(
                    child: SizedBox(
                      height: 47,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Text(
                              '+ Add Contact Person',
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            const Spacer(),
                            const SizedBox(
                              width: 45,
                              child: Icon(
                                Icons.add,
                                size: 25,
                              ),
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
                      'Company',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                GestureDetector(
                  onTap: () => Get.dialog(
                    AlertDialog(
                      insetPadding: const EdgeInsets.symmetric(horizontal: 16),
                      // contentPadding: EdgeInsets.symmetric(
                      // //   horizontal: 1,
                      // ),
                      // clipBehavior: Clip.antiAliasWithSaveLayer,
                      content: AddCompany(),
                      // content: const AddContactPerson(),
                      // title: "",
                    ),
                  ),
                  child: Card(
                    child: SizedBox(
                      height: 47,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Text(
                              '+ Add Company Details',
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            const Spacer(),
                            const SizedBox(
                              width: 45,
                              child: Icon(
                                Icons.add,
                                size: 25,
                              ),
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
                    child: SizedBox(
                      height: 47,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Text(
                              '+ Add Company Documents',
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            const Spacer(),
                            const SizedBox(
                              width: 45,
                              child: Icon(
                                Icons.add,
                                size: 25,
                              ),
                            )
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
                          Get.to(const AddressScreen());
                        },
                        child: Text(
                          '+ Add Another Address',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey),
                        )),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const AddressScreen());
                  },
                  child: Card(
                    child: SizedBox(
                      height: 47,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Text(
                              '+ Add Company Address',
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            const Spacer(),
                            const SizedBox(
                              width: 45,
                              child: Icon(
                                Icons.add,
                                size: 25,
                              ),
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
                        primary: Color.fromRGBO(225, 225, 225, 1),
                        onPrimary: Color.fromRGBO(164, 164, 164, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
