import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pages/commonWidget/App_listtile.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
              color: Colors.white,
            ),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
              color: Colors.white,
            ),
            label: 'School',
          ),
        ],
        backgroundColor: Colors.black,
      ),
      endDrawer: const Drawer(),
      body: Column(children: [
        const Center(
            child: Text(
          'Find your',
          style: TextStyle(fontSize: 20, color: Colors.white),
        )),
        const Center(
            child: Text(
          '   Workout Class',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 200,
                height: 40,
                child: TextFormField(
                    decoration: InputDecoration(
                  labelText: 'Search',
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  suffix: const Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 20,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  filled: true,
                  fillColor: Colors.grey,
                )),
              ),
              Container(
                  height: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more,
                        color: Colors.lime,
                        size: 15,
                      ),
                    ),
                  )),
            ],
          ),
        ),
        Expanded(
            child: SizedBox(
                child: ListView(children: [
          App_Listtile(
              image: 'assets/p1.jpg', main_text: 'ddd', sub_text: 'hhhh'),
          App_Listtile(
              image: 'assets/p3.jpg', main_text: 'ddd', sub_text: 'hhhh'),
          App_Listtile(
              image: 'assets/p1.jpg', main_text: 'ddd', sub_text: 'hhhh'),
          App_Listtile(
              image: 'assets/p3.jpg', main_text: 'ddd', sub_text: 'hhhh'),
        ]))),
      ]),
    );
  }
}
