import 'package:flutter/material.dart';
import 'package:test_flutter_01/model/PostModel.dart';

void main() {
  runApp(const MyApps());
}

class MyApps extends StatefulWidget {
  const MyApps({super.key});

  @override
  State<MyApps> createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  PostModel? postModel;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter request")),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text((postModel != null)
                ? postModel!.id +
                    " | " +
                    postModel!.name +
                    " | " +
                    postModel!.job
                : "KOSONG NIHHHH"),
            ElevatedButton(
              onPressed: () => {
                PostModel.connectToApi("Jalalaudin", "developer").then((value) {
                  {
                    postModel = value;
                    setState(() {});
                  }
                })
              },
              child: Text("POST"),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10)),
            )
          ],
        )),
      ),
    );
  }
}
