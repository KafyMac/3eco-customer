import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentScreen extends StatelessWidget {
  const DocumentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 231, 227, 245),
        foregroundColor: Colors.black,
        title: Text(
          'Add Company Documents',
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4.5),
              child: Text('Company Documents',
                  style: GoogleFonts.poppins(
                      fontSize: 17, fontWeight: FontWeight.w600)),
            ),
            SizedBox(
              height: Get.height / 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: RichText(
                  text: TextSpan(
                text: "Company ID",
                style: GoogleFonts.poppins(fontSize: 12, color: Colors.black),
                children: const [
                  TextSpan(
                    text: " *",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              )),
            ),
            Card(
              elevation: 4,
              shadowColor: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 52,
                    width: Get.width / 1.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.file_upload_outlined,
                            color: Color.fromRGBO(45, 12, 179, 1)),
                        const SizedBox(
                          width: 3,
                        ),
                        Text('Upload',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(45, 12, 179, 1)))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height / 30,
            ),
            Container(
                child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: RichText(
                  text: TextSpan(
                text: "PAN Card",
                style: GoogleFonts.poppins(fontSize: 12, color: Colors.black),
                children: const [
                  TextSpan(
                    text: " *",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              )),
            )),
            Card(
              elevation: 4,
              shadowColor: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 52,
                    width: Get.width / 1.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.file_upload_outlined,
                            color: Color.fromRGBO(45, 12, 179, 1)),
                        const SizedBox(
                          width: 3,
                        ),
                        Text('Upload',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(45, 12, 179, 1)))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height / 30,
            ),
            Container(
                child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: RichText(
                  text: TextSpan(
                text: "GST Certificate",
                style: GoogleFonts.poppins(fontSize: 12, color: Colors.black),
                children: const [
                  TextSpan(
                    text: " *",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              )),
            )),
            Card(
              elevation: 4,
              shadowColor: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 52,
                    width: Get.width / 1.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.file_upload_outlined,
                            color: Color.fromRGBO(45, 12, 179, 1)),
                        const SizedBox(
                          width: 3,
                        ),
                        Text('Upload',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(45, 12, 179, 1)))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 62,
                        width: Get.width / 2.2,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              primary: const Color.fromARGB(255, 231, 227, 245),
                              side: const BorderSide(
                                  width: 1.5,
                                  color: Color.fromRGBO(45, 12, 179, 1))),
                          onPressed: () {
                            print('login');
                            Get.back();
                          },
                          child: Text(
                            'Cancel',
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(45, 12, 179, 1)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 7.5,
                      ),
                      SizedBox(
                        height: 62,
                        width: Get.width / 2.2,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              primary: const Color.fromRGBO(45, 12, 179, 1)),
                          onPressed: () {
                            print('signup');
                          },
                          child: Text(
                            'Save',
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
