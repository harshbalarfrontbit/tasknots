import 'package:flutter/material.dart';

List data = [
  {
    "name": "harsh",
    "status": true,
  },
  {
    "name": "pratik",
    "status": false,
  },
  {
    "name": "nikhil",
    "status": false,
  },

];

class All extends StatefulWidget {
  const All({Key? key}) : super(key: key);

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(

        itemCount: data.length,
        itemBuilder: (context, index) {

          return Column(
            children: [
              Container(
                color: Colors.grey,
                child: Row(children: [
                  Checkbox(
                    value: data[index]["status"],
                    onChanged: (value) {},
                  ),
                  Text('${data[index]["name"]}'),
                ]),
              )
            ],
          );
        },
      ),
    );
  }
}
