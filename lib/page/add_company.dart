import 'package:flutter/material.dart';
// import 'package:ui_mobile_3ecox/controllers/Supplier/create_supplier_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCompany extends GetView {
  // CreateSupplierController controller = Get.put(CreateSupplierController());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        type: MaterialType.transparency,
        child:
            // Align(
            //   alignment: Alignment.topCenter,
            //   child:
            //  Padding(
            //   padding: const EdgeInsets.only(top: 60),
            //   child:
            Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
          ),
          // margin: const EdgeInsets.only(left: 15, right: 15),
          // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 2,
                  ),
                  child: Text("Company",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1))),
                ),
              ),
              Center(
                  child: Padding(
                padding: EdgeInsets.only(top: 25),
                child: Container(
                    width: MediaQuery.of(context).size.width - 15,
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 2, top: 8, bottom: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: "Name",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12, color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: " *",
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                            SizedBox(
                                height: 50,
                                child:
                                    // Obx(() =>
                                    TextFormField(
                                  // initialValue:
                                  //     controller.contactName.value,
                                  // onChanged:
                                  //     controller.contactNameChanged,
                                  cursorWidth: 1,
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    hintText: "Contact Name",
                                    // errorText: controller
                                    //         .contactNameError.isEmpty
                                    //     ? ""
                                    //     : controller
                                    //         .contactNameError.value,
                                    hintStyle: GoogleFonts.poppins(
                                        color: Colors.grey[400], fontSize: 12),
                                    errorBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(128, 128, 128, 0.5),
                                        width: 0.8,
                                      ),
                                    ),
                                    focusedErrorBorder:
                                        const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(128, 128, 128, 0.5),
                                        width: 0.8,
                                      ),
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(128, 128, 128, 0.7),
                                        width: 0.8,
                                      ),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(128, 128, 128, 0.5),
                                        width: 0.8,
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: RichText(
                                  text: TextSpan(
                                text: "Email",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: " *",
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              )),
                            )),
                            // Padding(
                            //   padding: const EdgeInsets.symmetric(
                            //     horizontal: 0,
                            //   ),
                            //   child:
                            SizedBox(
                              height: 65,
                              child:
                                  // Obx(
                                  //   () =>
                                  TextFormField(
                                // initialValue:
                                //     controller.mobileNumer.value,
                                // onChanged:
                                //     controller.mobileNumberChanged,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  hintText: "Email",
                                  // errorText: controller
                                  //         .mobileNumerError.isEmpty
                                  //     ? ""
                                  //     : controller
                                  //         .mobileNumerError.value,
                                  hintStyle: GoogleFonts.poppins(
                                      color: Colors.grey[400], fontSize: 12),
                                  errorBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(128, 128, 128, 0.5),
                                      width: 0.8,
                                    ),
                                  ),
                                  focusedErrorBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(128, 128, 128, 0.5),
                                      width: 0.8,
                                    ),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(128, 128, 128, 0.5),
                                      width: 0.8,
                                    ),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(128, 128, 128, 0.5),
                                      width: 0.8,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                            ),

                            Container(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: RichText(
                                  text: TextSpan(
                                text: "GST",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: " *",
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              )),
                            )),
                            SizedBox(
                              height: 50,
                              child: TextFormField(
                                // initialValue:
                                //     controller.mobileNumer.value,
                                // onChanged:
                                //     controller.mobileNumberChanged,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  hintText: "GST Number",
                                  // errorText: controller
                                  //         .mobileNumerError.isEmpty
                                  //     ? ""
                                  //     : controller
                                  //         .mobileNumerError.value,
                                  hintStyle: GoogleFonts.poppins(
                                      color: Colors.grey[400], fontSize: 12),
                                  errorBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(128, 128, 128, 0.5),
                                      width: 0.8,
                                    ),
                                  ),
                                  focusedErrorBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(128, 128, 128, 0.5),
                                      width: 0.8,
                                    ),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(128, 128, 128, 0.5),
                                      width: 0.8,
                                    ),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(128, 128, 128, 0.5),
                                      width: 0.8,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: RichText(
                                  text: TextSpan(
                                text: "Type",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: " *",
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              )),
                            )),
                            TextFormField(
                              // initialValue:
                              //     controller.mobileNumer.value,
                              // onChanged:
                              //     controller.mobileNumberChanged,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                hintText: "Food Type",
                                // errorText: controller
                                //         .mobileNumerError.isEmpty
                                //     ? ""
                                //     : controller
                                //         .mobileNumerError.value,
                                hintStyle: GoogleFonts.poppins(
                                    color: Colors.grey[400], fontSize: 12),
                                errorBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(128, 128, 128, 0.5),
                                    width: 0.8,
                                  ),
                                ),
                                focusedErrorBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(128, 128, 128, 0.5),
                                    width: 0.8,
                                  ),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(128, 128, 128, 0.5),
                                    width: 0.8,
                                  ),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(128, 128, 128, 0.5),
                                    width: 0.8,
                                  ),
                                ),
                              ),
                              keyboardType: TextInputType.text,
                            ),

                            // ),
                            // )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Spacer(),
                                Container(
                                  width: 100,
                                  height: 40,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        primary: Colors.white,
                                        side: const BorderSide(
                                            width: 1,
                                            color: Color.fromRGBO(
                                                45, 12, 179, 1))),
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: Text(
                                      "Cancel",
                                      style: GoogleFonts.poppins(
                                          color: Color.fromRGBO(45, 12, 179, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width: 100,
                                  height: 40,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          primary:
                                              Color.fromRGBO(45, 12, 179, 1)),
                                      // onPressed: () =>
                                      //     controller.contactAdded(
                                      //         controller.contactName.value,
                                      //         controller.mobileNumer.value),
                                      onPressed: () {},
                                      child: Text(
                                        "Save",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      )),
                                )
                              ]),
                        ),
                      ],
                    )),
              )),
            ],
          ),
        ),
        // )
        // ),
      ),
    );
  }
}
