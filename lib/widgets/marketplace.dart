// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class PruebaCorta extends StatefulWidget {
  const PruebaCorta({super.key});
  @override
  State<PruebaCorta> createState() => _corta();
}

class _corta extends State<PruebaCorta> {
  static const cardImage = NetworkImage(
      'https://image.jimcdn.com/app/cms/image/transf/dimension=1920x400:format=jpg/path/s7e835818b956ad90/image/i183fae02f7ba6056/version/1541189580/image.jpg');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return const IconButton(
              icon: Icon(Icons.close),
              onPressed: null,
            );
          },
        ),
        title: const Center(
          child: Text(
            '1499 Galenia Road',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: const <Widget>[
          IconButton(
            icon: Icon(Icons.keyboard_arrow_up),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.keyboard_arrow_down),
            onPressed: null,
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView(
        // Añadido ListView aquí
        children: [
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 212.0,
                  child: Ink.image(
                    image: cardImage,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                ListTile(
                  title: const Text(
                    '\$599,000',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('1499 Galenia Rd, Austin, TX',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.ios_share),
                        onPressed: () {
                          // Acción a realizar cuando se presiona el ícono de compartir
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {
                          // Acción a realizar cuando se presiona el ícono de favoritos
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly, // Puedes ajustar la alineación horizontal según tus preferencias
                  children: [
                    Column(
                      children: [
                        Text("4",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('Beds',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("3+",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('Baths',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("4,203",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('Sq. ft',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("8,843",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('Lot Sq. ft',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Card(
              child: Row(
            children: [
              SizedBox(width: 10),
              Icon(
                Icons.approval_outlined,
                size: 35,
              ),
              SizedBox(width: 5),
              Text(
                "View MaP",
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
              SizedBox(width: 40),
              Icon(
                Icons.directions_car_outlined,
                size: 35,
              ),
              SizedBox(width: 5),
              Text("10 minutes away",
                  style: TextStyle(fontSize: 18, color: Colors.blue)),
            ],
          )),
          const SizedBox(height: 8),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Open Houses",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Text("Friday 1:00 pm - 4:00 pm",
                        style: TextStyle(fontSize: 18)),
                    SizedBox(width: 100),
                    Text("2/24"),
                    SizedBox(width: 0),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Text("Saturday 1:00 pm - 4:00 pm",
                        style: TextStyle(fontSize: 18)),
                    SizedBox(width: 78),
                    Text("2/25"),
                    SizedBox(width: 0),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                ),
                //const SizedBox(height: 15), // Espacio adicional antes del botón
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Acción a realizar cuando se presiona el botón
                    },
                    child: const Text(
                      'Contact Agent',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
