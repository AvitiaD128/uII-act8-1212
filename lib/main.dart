import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CERESO128',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CERESO128'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Presos Cereso128'),
              decoration: BoxDecoration(
                color: Color(0xfff38721),
              ),
            ),
            buildListTile(context, 'Chapo Guzman', 'assets/image1.jpg'),
            buildListTile(context, 'Amado Carrillo', 'assets/image2.jpg'),
            buildListTile(context, 'Pablo Escobar', 'assets/image3.jpg'),
            buildListTile(context, 'Gregorio Campa', 'assets/image4.jpg'),
            buildListTile(context, 'Vanya Matus Gamboa', 'assets/image5.jpg'),
            buildListTile(context, 'Julion Alvarez', 'assets/image6.jpg'),
            buildListTile(context, 'Alfredo Olivas', 'assets/image7.jpg'),
          ],
        ),
      ),
    );
  }

  ListTile buildListTile(BuildContext context, String title, String imagePath) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
      title: Text(title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ImageScreen(imagePath: imagePath)),
        );
      },
    );
  }
}

class ImageScreen extends StatelessWidget {
  final String imagePath;

  const ImageScreen({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CERESO128'),
      ),
      body: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}
