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
      body: const _HomeWeather(),
    );
  }
}

class _HomeWeather extends StatelessWidget {
  const _HomeWeather();

  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: const [
                TemperatureCard(),
                SizedBox(height: 50),
                TemperaturesMaxMinCard(),
                SizedBox(height: 50),
                MoreOptionsCard(),
                SizedBox(height: 10,)
              ],
            ),
          )
        ),
      ]
    );
  }
}

class TemperatureCard extends StatelessWidget {
  const TemperatureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      height: 200,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Text('Temperatura Actual:')
              ),
          
              Expanded(
                flex: 9,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                    Expanded(
                      flex: 5,
                      child: Icon(Icons.device_thermostat_sharp, size: 60,)
                    ),
                        
                    Expanded(
                      flex: 5,
                      child: Text('24 °C', textAlign: TextAlign.center, style: TextStyle(fontSize: 50),)
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TemperaturesMaxMinCard extends StatelessWidget {
  const TemperaturesMaxMinCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      height: 200,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Text('Temperaturas Registradas:')
              ),
          
              Expanded(
                flex: 9,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Max', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                        Text('24 C', textAlign: TextAlign.center, style: TextStyle(fontSize: 40)),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Min', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                        Text('24 C', textAlign: TextAlign.center, style: TextStyle(fontSize: 40)),
                      ],
                    ),
                        
                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MoreOptionsCard extends StatelessWidget {
  const MoreOptionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      height: 200,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Text('Datos adicionales:')
              ),
          
              Expanded(
                flex: 9,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Viento', textAlign: TextAlign.center,),
                        Icon(Icons.air_rounded, size: 40,),
                        Text('11 Km/h', 
                          textAlign: TextAlign.center, 
                          style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Prob Lluvia', textAlign: TextAlign.center,),
                        Icon(Icons.water_drop_rounded, size: 40,),
                        Text('34 %', 
                          textAlign: TextAlign.center, 
                          style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Hum %', textAlign: TextAlign.center,),
                        Icon(Icons.waves_rounded, size: 40,),
                        Text('69 %', 
                          textAlign: TextAlign.center, 
                          style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ],
                    ),
                        
                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}