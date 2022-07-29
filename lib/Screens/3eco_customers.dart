import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../page/customers1.dart';

class CustomerScreens extends StatefulWidget {
  const CustomerScreens({Key? key}) : super(key: key);

  @override
  State<CustomerScreens> createState() => _CustomerScreensState();
}

class _CustomerScreensState extends State<CustomerScreens> {
  int currentIndex = 0;

  final screens = [
    Center(
      child: Text('Orders', style: GoogleFonts.poppins(fontSize: 25)),
    ),
    (const Customer()),
    Center(
      child: Text('Products', style: GoogleFonts.poppins(fontSize: 25)),
    ),
    Center(
      child: Text('More', style: GoogleFonts.poppins(fontSize: 25)),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 9,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromRGBO(45, 12, 179, 1),
        selectedFontSize: 12,
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 13,
        ),
        unselectedFontSize: 15,
        unselectedLabelStyle: GoogleFonts.poppins(fontSize: 13),
        unselectedItemColor: Color.fromRGBO(90, 90, 90, 1),
        iconSize: 22,
        items: [
          BottomNavigationBarItem(
            label: "Orders",
            tooltip: 'Orders',
            icon: ImageIcon(AssetImage("assets/images/orders2.png"),
                color: currentIndex == 0
                    ? const Color.fromRGBO(45, 12, 179, 1)
                    : Color.fromRGBO(90, 90, 90, 1)),
          ),
          BottomNavigationBarItem(
            label: "Customers",
            tooltip: 'Customers',
            icon: ImageIcon(
              AssetImage("assets/images/customers2.png"),
              color: currentIndex == 1
                  ? const Color.fromRGBO(45, 12, 179, 1)
                  : Color.fromRGBO(90, 90, 90, 1),
            ),
          ),
          BottomNavigationBarItem(
            label: "Products",
            tooltip: 'Products',
            icon: ImageIcon(AssetImage("assets/images/products2.png"),
                color: currentIndex == 2
                    ? const Color.fromRGBO(45, 12, 179, 1)
                    : Color.fromRGBO(90, 90, 90, 1)),
          ),
          BottomNavigationBarItem(
            label: "More",
            tooltip: 'More',
            icon: ImageIcon(AssetImage("assets/images/more2.png"),
                color: currentIndex == 3
                    ? const Color.fromRGBO(45, 12, 179, 1)
                    : Color.fromRGBO(90, 90, 90, 1)),
          ),
        ],
      ),
    );
  }
}
