import 'package:flutter/material.dart';

void main() {
  runApp(const RootWidget());
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Профиль студента',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Профиль студента'),
    );
  }
}

class HomePage extends StatefulWidget {

  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _imageScale = 4;

  void _resizeAvatar() {
    setState(() {

      if(_imageScale == 4) {
        _imageScale = 3;
      }
      else {
        _imageScale = 4;
      }

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),

      ),

      body: Center(

        child: Row(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://sun9-43.userapi.com/impg/UKfU5mHnTgwmoqtsezInEPT7JLIL8osK0AupzQ/rtYEjaf9a_A.jpg?size=893x784&quality=95&sign=8ede35519e08c06c5ec681c300cc5607&type=album',
              scale: _imageScale,
            ),

            const SizedBox(width: 10),

            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Свинцицкий Михаил Юрьевич'),
                Text('22.11.2001'),
                Text('не женат'),
              ],
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _resizeAvatar,
        tooltip: 'Увеличить/уменьшить аватарку',
        child: const Icon(Icons.switch_account),
      ),
    );
  }
}
