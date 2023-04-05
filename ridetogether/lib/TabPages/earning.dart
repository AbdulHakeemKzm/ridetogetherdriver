import 'package:flutter/material.dart';


class EarningTab extends StatefulWidget {
  const EarningTab({Key? key}) : super(key: key);

  @override
  State<EarningTab> createState() => _EarningTabState();
}

class _EarningTabState extends State<EarningTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.yellow,
        title: Center(
          child: Text(
              "Earnings",
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
                    'Trip  $position',
                  ),
                  SizedBox(width: 200,),
                  Icon(Icons.monetization_on),

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
