import 'package:flutter/material.dart';
import 'package:shop_app_example/model/category_model.dart';
import 'package:shop_app_example/utils/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController p = PageController(viewportFraction: 1);
  List<CategoryModel> categoriess = [
    const CategoryModel(
      id: '1',
      name: 'Camisas',
      imageAsset: 'assets/images/camisa.jpg',
    ),
    const CategoryModel(
      id: '2',
      name: 'Abrigos',
      imageAsset: 'assets/images/abrigo.jpg',
    ),
    const CategoryModel(
      id: '3',
      name: 'Zapatos',
      imageAsset: 'assets/images/zapato.jpg',
    ),
    const CategoryModel(
      id: '4',
      name: 'Pantalones',
      imageAsset: 'assets/images/pantalones.jpg',
    ),
    const CategoryModel(
      id: '5',
      name: 'Gorras',
      imageAsset: 'assets/images/gorrar.jpg',
    ),
    const CategoryModel(
      id: '6',
      name: 'Bolsos',
      imageAsset: 'assets/images/bolsa.jpg',
    ),
  ];
  final List<String> banners = [
    'assets/banners/banner1.jpg',
    'assets/banners/banner1.jpg',
    'assets/banners/banner1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // seccion  de banners de la aplicacion
        SizedBox(
          height: 120,
          child: PageView.builder(
            itemCount: banners.length,
            controller: p,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(banners[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: SmoothPageIndicator(
              controller: p,
              count: banners.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: colorMarineBlue,
                dotHeight: 10,
                dotWidth: 10,
                spacing: 5,
              ),
            ),
          ),
        ),

        //! PONER SMOOTH TRANSITION EN EL BANNER
        const SizedBox(height: 10), // Espacio entre el banner y el buscador
        // buscador
        Material(
          elevation: 0.5,
          borderRadius: BorderRadius.circular(8),
          color: Colors.transparent, // para que solo el TextField tenga color
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white, // fondo blanco
              hintText: 'Buscar productos',
              hintStyle: const TextStyle(color: resendColor),
              prefixIcon: const Icon(Icons.search, color: resendColor),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none, // sin borde visible
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),

        // seccion de categorias
        SizedBox(
          height: 100, // altura suficiente para icono + texto
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoriess.length,
            itemBuilder: (context, index) {
              final categoria = categoriess[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: colorBesthane, width: 1),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: ClipOval(
                        child: Image.asset(
                          categoria.imageAsset,
                          fit: BoxFit.fill, // para llenar el círculo
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      categoria.name,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        // productos  populares
        const SizedBox(height: 10),
        Text(
          "Productos Populares",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: colorMarineBlue,
          ),
        ),
        // secciond e cartas de productos
        Row(
          children: [
            Expanded(
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/products/chompa.jpg',
                        fit: BoxFit.contain,
                        height: 80,
                        width: double.infinity,
                      ),
                      Text(
                        "Camiseta",
                        style: TextStyle(fontSize: 12, color: Colors.red),
                      ),
                      Text(
                        "Chompa de Algodon",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "\$20.00",
                                style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      Colors
                                          .grey[700], // un poco más claro que black54
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "\$30.00",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[400], // más clarito
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),

                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: colorMarineBlue,
                              border: Border.all(
                                color: colorBesthane,
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Icon(Icons.add_circle, color: colorYellow),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/products/chompa.jpg',
                          fit: BoxFit.contain,
                          height: 40,
                          width: double.infinity,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

        // seccion de botones de (redes de sociales)
      ],
    );
  }
}
