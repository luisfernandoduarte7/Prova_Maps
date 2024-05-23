import 'package:appmaps/map1.dart';
import 'package:appmaps/map2.dart';
import 'package:appmaps/map3.dart';
import 'package:flutter/material.dart';

// nomeação
class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomePageState();
}
class _HomePageState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APP de MAPS"),
        centerTitle: true,
        backgroundColor: Colors.purple
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                      child: const Text("Mapa 1"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Map1()),
                        );
                      }),
                  ElevatedButton(
                      child: const Text("Mapa 2"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Map2()),
                        );
                      }),
                  ElevatedButton(
                      child: const Text("Mapa 3"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Map3()),
                        );
                      })

                ]),
          ],
        ),
      ),
    );
  }
}
