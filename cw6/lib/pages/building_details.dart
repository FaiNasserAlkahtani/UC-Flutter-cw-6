import 'package:cw6/models/building.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Building_details extends StatelessWidget {
  

final Building building;

  const Building_details({super.key, required this.building});


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Details",
      style: TextStyle(fontSize: 30),
      ),
      backgroundColor: Color.fromARGB(255, 122, 8, 0),
      )
      ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(building.imageURL, width: 300, height: 400,
            fit: BoxFit.contain),
            Text("movie rating is : ${building.name}"),

          ],
          
          )));
  }
}