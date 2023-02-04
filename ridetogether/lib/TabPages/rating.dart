import 'package:flutter/material.dart';


class RatingTab extends StatefulWidget {
  const RatingTab({Key? key}) : super(key: key);

  @override
  State<RatingTab> createState() => _RatingTabState();
}

class _RatingTabState extends State<RatingTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.yellow,
        title: Center(
          child: Text(
            "Ratings",
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),

      body: ListView.separated(
        itemBuilder: (context, position) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    'Customer  $position',
                  ),
                  SizedBox(width: 140,),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, position) {
          return Card(
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              // child: Text(
              //   'Separator $position',
              //   style: TextStyle(color: Colors.white),
              // ),
            ),
          );
        },
        itemCount: 30,
      ),

    );
  }
}
