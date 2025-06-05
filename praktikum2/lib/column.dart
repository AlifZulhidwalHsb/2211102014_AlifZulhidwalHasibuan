import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column Example')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Menghindari overflow
          children: <Widget>[
            /*const Text('Deliver features faster'),
            const Text('Craft beautiful UIs'),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain, // Supaya logo tidak terlalu kecil
                child: const FlutterLogo(),
              ),
            ),
            */
            const Text('We move under cover and we move as one'),
            const Text('Through the night, we have one shot to live another day'),
            const Text('We cannot let a stray gunshot give us away'),
            const Text('We will fight up close, seize the moment and stay in it'),
            const Text('It’s either that or meet the business end of a bayonet'),
            const Text('The code word is ‘Rochambeau,’ dig me?'),
            Text(
              'Rochambeau!',
              style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
            ),
          ],
        ),
      ),
    );
  }
}
