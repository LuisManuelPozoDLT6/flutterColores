import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Colors1 extends StatefulWidget {
  const Colors1({super.key});

  @override
  State<Colors1> createState() => _ColorsState();
}

class _ColorsState extends State<Colors1> {
  List<Color> colors = [
    Colors.black,
    Colors.cyan,
    Colors.deepPurple,
    Colors.yellow,
    Colors.red,
    Colors.orange,
    Colors.green,
    Colors.pink,
    Colors.brown,
    Colors.lightBlue
  ];
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colores'),
        elevation: 2.0,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Luis Manuel Pozo :)',
            style: TextStyle(color: colors[i]),
          )
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.replay_outlined),
          onPressed: () => {
                if (i < colors.length - 1) {i++} else {i = 0},
                setState(() {}),
              }),
    );
  }
}
