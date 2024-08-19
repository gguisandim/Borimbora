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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test Buttons')),
      body: ActionButtons(
        onCurtirPressed: () {
          // Adicione a ação desejada para curtir
        },
        onCompartilharPressed: () {
          // Adicione a ação desejada para compartilhar
        },
        palaceName: 'Palacete Exemplo',
        palaceImage: 'lib/assets/palacete_exemplo.png',
      ),
      // Remover o FloatingActionButton
    );
  }
}

class ActionButtons extends StatelessWidget {
  final VoidCallback onCurtirPressed;
  final VoidCallback onCompartilharPressed;
  final String palaceName;
  final String palaceImage;

  ActionButtons({
    required this.onCurtirPressed,
    required this.onCompartilharPressed,
    required this.palaceName,
    required this.palaceImage,
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
                onPressed: () {
                  // Remover a funcionalidade de favoritar
                },
                child: Row(
                  children: [
                    Icon(Icons.star_border), // Ícone de estrela não preenchida
                    SizedBox(width: 8.0),
                    Text('Favoritar'),
                  ],
                ),
              ),
              SizedBox(width: 16.0),
              ElevatedButton(
                onPressed: onCompartilharPressed,
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
