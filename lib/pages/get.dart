import 'package:flutter/material.dart';
import '../api/api.dart';

import '../models/cars/car/car.dart';
import '../models/cars/cars.dart';
import '../widgets/car_card.dart';
import '../core/network_data.dart';

class Get extends StatefulWidget {
  Get({super.key, required this.title});
  final String title;

  @override
  State<Get> createState() => _Get();
}

class _Get extends State<Get> {
  @override
  void initState () {
  super.initState();
  Data();
}
   var networkStatus= NetworkDataStatus.values[0];
  Future<void> Data() async{
  data = await client.get(context);
  networkStatus = NetworkDataStatus.success;
  setState(() {
    
  });
}
  Cars? data;
  UserApi client = UserApi();
  @override
Widget build(BuildContext context) {
    // double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xff171717),
      body: SingleChildScrollView(
        child: Column(
          children:[
            SizedBox(height: deviceHeight*0.1),
            const Text(
              "Информации",
              style: TextStyle(fontSize: 18.0,color: Colors.white),
              ),
            networkStatus == NetworkDataStatus.success ?
              SizedBox(
                height: deviceHeight*0.9,
                child: ListView.builder(
                itemCount: data?.cars.length,
                itemBuilder: (BuildContext context, index) {
                  Car curCar = data!.cars[index];
                  return CarCard(car: curCar);
                }
                ),
              )
             : const CircularProgressIndicator()
          ]
        ),
      ),
    );
  }
}

