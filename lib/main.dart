import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        title: 'Contator de Pessoas',
        debugShowCheckedModeBanner: false,
        home: Home()),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infomacao = 'Pode entrar';
  void _mudarContador(int delta) {
    setState(() {
      _people += delta;

      if (_people < 0) {
        _infomacao = 'Mundo estranho';
      } else {
        _infomacao = 'Pode entrar';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'images/restaurant.jpg',
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pessoas: $_people',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: FlatButton(
                    child: Text(
                      '+1',
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                    onPressed: () {
                      _mudarContador(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: FlatButton(
                    child: Text(
                      '-1',
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                    onPressed: () {
                      _mudarContador(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              _infomacao,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            )
          ],
        ),
      ],
    );
  }
}
