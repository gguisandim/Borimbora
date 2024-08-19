import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black, // Cor de fundo
            foregroundColor: Colors.white, // Cor do texto
            minimumSize: Size(120, 40),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Test Buttons')),
        body: ActionButtons(
          onCurtirPressed: () {},
          onCompartilharPressed: () {},
        ),
      ),
    );
  }
}

class ActionButtons extends StatelessWidget {
  final VoidCallback onCurtirPressed;
  final VoidCallback onCompartilharPressed;

  ActionButtons({
    required this.onCurtirPressed,
    required this.onCompartilharPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 16.0),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Cor de fundo
                  foregroundColor: Colors.white, // Cor do texto
                  minimumSize: Size(120, 40),
                ),
                onPressed: onCurtirPressed,
                child: Row(
                  children: [
                    Icon(Icons.thumb_up),
                    SizedBox(width: 8.0),
                    Text('Curtir'),
                  ],
                ),
              ),
              SizedBox(width: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: Size(120, 40),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.share),
                    SizedBox(width: 8.0),
                    Text('Compartilhar'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
