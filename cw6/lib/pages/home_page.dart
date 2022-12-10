import 'package:cw6/models/building.dart';
import 'package:cw6/pages/building_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("معالم الكويت", 
        style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Color.fromARGB(255, 65, 115, 252)
        ,),
        body: ListView.builder(
          itemCount: Building.buildings.length,
          itemBuilder: ((context, index) {

            return Container(
              height: 150,
              width: 150,
              child: InkWell(
                onTap: () {
                  //fixed for all navegation
                  Navigator.push(context, MaterialPageRoute(
                    builder: ((context) {
                      return Building_details(building: Building.buildings[index]);
                    })) );
                },
                child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image.asset(Building.buildings[index].imageURL), 
                    padding: EdgeInsets.all(5.5),)
                    ,
                    Padding(padding: const EdgeInsets.all(10))
                    ,
                    Text("ybiybi",
                    style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold
                    )
                    )
                  ],
                )
                          ),
              ));
          }) )
    );
  }
}