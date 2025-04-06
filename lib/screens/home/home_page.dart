import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages = [
    const Center(child: Text('Home')),
    const Center(child: Text('Search')),
    const Center(child: Text('Location')),
    const Center(child: Text('Profile')),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),

        title: Text(
          'Tu tienda',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          Badge(
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
      body: pages[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const StadiumBorder(),
        backgroundColor: Colors.black,
        onPressed: () {
          // Acción al presionar el botón flotante
        },
        child: const Icon(FontAwesomeIcons.basketShopping, color: Colors.white),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: IconButton(
                    icon: const Icon(FontAwesomeIcons.house),
                    onPressed: () {
                      // Acción al presionar el icono de casa
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: IconButton(
                    icon: Icon(Icons.grid_view),
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
                    icon: const Icon(FontAwesomeIcons.locationDot),
                    onPressed: () {
                      // Acción al presionar el icono de casa
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    icon: Icon(FontAwesomeIcons.message),
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
