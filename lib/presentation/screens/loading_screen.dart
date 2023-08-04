import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, size: 200,),
              SizedBox(height: 100,),
              CircularProgressIndicator(),
              SizedBox(height: 50,),
              Text('Buscando...')
            ]
          ),
        ),
      ),
    );
  }
}