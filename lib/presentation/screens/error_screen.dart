import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Oops...\nNo se pudo encontrar esta ubicacion\nTrata con otra ciudad',  textAlign: TextAlign.center,),
              Icon(Icons.location_off_rounded, size: 200,),
            ]
          ),
        ),
      ),
    );
  }
}