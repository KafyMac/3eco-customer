import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:get/get.dart';
import '../controller/rightchild_timeline.dart';

class AddCart extends StatelessWidget {
  const AddCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(242, 240, 255, 1),
        foregroundColor: Colors.black,
        title: Text(
          'Purchase #PU12454',
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
            // child: Padding(
            //   padding: const EdgeInsets.only(left: 5.0),
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Status',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),

              // width: MediaQuery.of(context).size.width,
              Card(
                child: SizedBox(
                  // height: Get.height / 4.0,
                  // width: 400,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 0, left: 16, bottom: 16, right: 16),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TimelineTile(
                          alignment: TimelineAlign.manual,
                          lineXY: 0.0,
                          // isLast: true,
                          isFirst: true,
                          indicatorStyle: const IndicatorStyle(
                            width: 30,
                            color: Color(0xFFDADADA),
                            padding: EdgeInsets.all(6),
                          ),
                          endChild: const _RightChild(
                            disabled: true,
                            asset: 'assets/images/timeline_verified.png',
                            title: 'N/A',
                            message: 'Delivered',
                          ),
                          beforeLineStyle: const LineStyle(
                            color: Colors.black,
                          ),
                        ),
                        TimelineTile(
                          alignment: TimelineAlign.manual,
                          lineXY: 0.0,
                          // isLast: true,
                          indicatorStyle: const IndicatorStyle(
                            width: 30,
                            color: Color(0xFFDADADA),
                            padding: EdgeInsets.all(6),
                          ),
                          endChild: const _RightChild(
                            disabled: true,
                            asset: 'assets/images/timeline_del3.png',
                            title: 'N/A',
                            message: 'Transit',
                          ),
                          beforeLineStyle: const LineStyle(
                            color: Colors.black,
                          ),
                        ),
                        TimelineTile(
                          alignment: TimelineAlign.manual,
                          lineXY: 0.0,
                          // isLast: true,
                          indicatorStyle: IndicatorStyle(
                            iconStyle: IconStyle(
                                fontSize: 20,
                                iconData: Icons.minimize,
                                color: Colors.white),
                            width: 30,
                            color: Color(0xFFDADADA),
                            padding: EdgeInsets.all(6),
                          ),
                          endChild: const _RightChild(
                            disabled: true,
                            asset: 'assets/images/timeline_del2.png',
                            title: 'N/A',
                            message: 'Picked Up',
                          ),
                          beforeLineStyle: const LineStyle(
                            color: Colors.black,
                          ),
                        ),
                        TimelineTile(
                          alignment: TimelineAlign.manual,
                          lineXY: 0.0,
                          // isLast: true,
                          indicatorStyle: IndicatorStyle(
                            iconStyle: IconStyle(
                                fontSize: 20,
                                iconData: Icons.more_horiz_outlined,
                                color: Colors.white),
                            width: 30,
                            color: Color.fromRGBO(45, 13, 178, 1),
                            padding: EdgeInsets.all(6),
                          ),
                          endChild: const _RightChild(
                            disabled: true,
                            asset: 'assets/images/timeline_del1.png',
                            title: '14:13 hrs, 18 Jun 2022',
                            message: 'Dispatched',
                          ),
                          beforeLineStyle: const LineStyle(
                            color: Colors.black,
                          ),
                        ),
                        TimelineTile(
                          alignment: TimelineAlign.manual,
                          lineXY: 0.0,
                          isLast: true,
                          indicatorStyle: IndicatorStyle(
                            iconStyle: IconStyle(
                                fontSize: 20,
                                iconData: Icons.verified,
                                color: Colors.white),
                            width: 30,
                            color: Colors.green,
                            padding: EdgeInsets.all(6),
                          ),
                          endChild: const _RightChild(
                            disabled: true,
                            asset: 'assets/images/timeline_del4.png',
                            title: '16:13 hrs, 18 Jun 2022',
                            message: 'Ordered',
                          ),
                          beforeLineStyle: const LineStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

class _RightChild extends StatelessWidget {
  const _RightChild({
    Key? key,
    required this.asset,
    required this.title,
    required this.message,
    this.disabled = false,
  }) : super(key: key);

  final String asset;
  final String title;
  final String message;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Opacity(
            child: Image.asset(asset, height: 50),
            opacity: disabled ? 0.5 : 1,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title,
                style: GoogleFonts.poppins(
                  color: disabled
                      ? Color.fromARGB(255, 0, 0, 0)
                      : const Color(0xFF636564),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                message,
                style: GoogleFonts.poppins(
                  color: disabled
                      ? Color.fromARGB(255, 0, 0, 0)
                      : const Color(0xFF636564),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
