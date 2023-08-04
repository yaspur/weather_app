import 'package:flutter/material.dart';
import 'package:weather_app/presentation/widgets/shared/search_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const SearchBox()
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.transparent,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Barranquilla, Atlantico', textScaleFactor: 2.5),
                          Text('4 de agosto de 2023', textScaleFactor: 1.2)
                        ],
                      ),
                    ),
              
                    Expanded(
                      flex: 2,
                      child: Icon(Icons.sunny, size: 50,)
                    )
                  ],
                ),
              ),
            ),
          ),

          Expanded(
            flex: 9,
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const Text('Hola'); 
              },
            )
          ),
        ]
      ),
    );
  }
}