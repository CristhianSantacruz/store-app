import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_app_example/screens/fragments/home_page.dart';
import 'package:shop_app_example/utils/colors.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final pages = [
    const HomePage(),
    const Center(child: Text('Search')),
    const Center(child: Text('Location')),
    const Center(child: Text('Profile')),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: colorMarineBlue,
        iconTheme: const IconThemeData(color: Colors.white),

        title: Text(
          'Tu tienda',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          Badge(
            backgroundColor: colorRed,
            label: Text('0', style: TextStyle(color: Colors.white)),
            child: IconButton(
              icon: const Icon(
                FontAwesomeIcons.basketShopping,
                color: Colors.white,
              ),
              onPressed: () {
                // Acción al presionar el carrito
              },
            ),
          ),
          IconButton(
            icon: const Icon(Icons.person, color: Colors.white, size: 33),
            onPressed: () {
              // Acción al presionar el carrito
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: pages[currentIndex],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const StadiumBorder(),
        backgroundColor: colorMarineBlue,
        onPressed: () {
          // Acción al presionar el botón flotante
        },
        child: const Icon(FontAwesomeIcons.basketShopping, color:Colors.white),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color:colorMarineBlue,
                      borderRadius: BorderRadius.circular(
                        20,
                      ), // Hacer el contorno redondeado
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 0),
                    child: Center(
                      child: const Icon(
                          size: 23,
                          FontAwesomeIcons.house,
                          color:Colors.white
                        ),
                       
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: IconButton(
                    icon: Icon(Icons.grid_view, color: colorMarineBlue),
                    onPressed: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.locationDot,
                      color: colorMarineBlue,
                    ),
                    onPressed: () {
                      // Acción al presionar el icono de casa
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.tags,
                      color: colorMarineBlue,
                    ),
                    onPressed: () {
                      setState(() {
                        currentIndex = 3;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
