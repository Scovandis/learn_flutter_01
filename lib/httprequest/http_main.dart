import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test_flutter_01/httprequest/post_result_model.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  PostResultModel? postResult;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter request"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((postResult != null)
                  ? postResult!.id +
                      " | " +
                      postResult!.name +
                      " | " +
                      postResult!.job
                  : "KOSONG NIHHHH"),
              ElevatedButton(
                onPressed: () => {
                  PostResultModel.connectToAPI("JALALUDIN", "DEVELOPER")
                      .then((value) {
                    {
                      postResult = value;
                      setState(() {});
                    }
                  })
                },
                child: Text("POST"),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
