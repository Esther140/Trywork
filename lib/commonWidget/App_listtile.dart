import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pages/workout/selectedtile.dart';

class App_Listtile extends StatelessWidget {
  final String image;
  final String main_text;
  final String sub_text;

  const App_Listtile({
    super.key,
    required this.image,
    required this.main_text,
    required this.sub_text,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => selectedTile()));
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    // color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.fitHeight,
                    )),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(main_text),
                  Text(sub_text),
                ],
              ),
              SizedBox(
                width: 180,
              ),
              Icon(Icons.mood),
            ],
          ),
          // SizedBox(width: 5),
          // Icon(Icons.skip_next)
        ),
      ),
    );
  }
}
