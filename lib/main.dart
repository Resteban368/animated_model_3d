import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  O3DController o3dController = O3DController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(243, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: //778450
            const Color.fromARGB(243, 0, 0, 0),
        title: const Text('Halo-Infinite-Master'),
      ),
      body: O3D(
        src: 'assets/halo.glb',
        controller: o3dController,
        ar: false,
        autoPlay: true,
        autoRotate: false,
      ),
    );
  }
}
