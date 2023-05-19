import 'package:flutter/material.dart';

class selectedTile extends StatelessWidget {
  const selectedTile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Icon(Icons.favorite, color: Colors.white),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Container(
                height: 150,
                width: 400,
                child: Row(children: [
                  Column(),
                ]),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 400,
                child: Row(children: [
                  Column(),
                ]),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: 400,
                child: Row(children: [
                  Column(),
                ]),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: 400,
                child: Row(children: [
                  Column(),
                ]),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(height: 10),
              Text(
                'week training exercise \n all part',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Hi Smart People\n Here I made a new exploration about fitness apps,\n I made them in a bold style because this app will be used a lot by assertive users ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: 400,
                child: Center(child: Text('Start Now')),
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(30)),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
