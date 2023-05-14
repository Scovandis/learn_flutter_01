import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyDragAndDrop());

class AppStateFullWidget extends StatefulWidget {
  const AppStateFullWidget({super.key});

  @override
  State<AppStateFullWidget> createState() => _AppStateFullWidgetState();
}

class _AppStateFullWidgetState extends State<AppStateFullWidget> {
  int number = 0;
  String message = "Please click button below!";

  void changeName() => setState(() {
        message = "On Touch Event";
      });

  void tekanTombol() => setState(() {
        number++;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Hybrid"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      message = "On Touch Event";
                    });
                  },
                  child: Text("Touch Me"))
            ],

            // children: <Widget>[
            //   Text(
            //     number.toString(),
            //     style: TextStyle(fontSize: 10 + number.toDouble()),
            //   ),
            //   ElevatedButton(
            //       // style: ElevatedButton.styleFrom(
            //       //     shape: RoundedRectangleBorder(
            //       //         borderRadius: BorderRadius.circular(5))),
            //       // style: ButtonStyle(
            //       //     shape:
            //       //         MaterialStateProperty.all<RoundedRectangleBorder>(
            //       //             const RoundedRectangleBorder(
            //       //   borderRadius: BorderRadius.zero,
            //       // ))),
            //       onPressed: tekanTombol,
            //       child: const Text("Tambah Bilangan"))
            // ]),
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Application Flutter"),
        ),
        // body: Center(
        //     child: Container(
        //         color: Colors.lightBlue,
        //         width: 150,
        //         height: 100,
        //         child: const Text(
        //           "Hello world, We cannot solve problems with the kind of thinking we employed when we came up with them.",
        //           maxLines: 3,
        //           overflow: TextOverflow.ellipsis,
        //           style: TextStyle(
        //               color: Colors.white,
        //               fontStyle: FontStyle.italic,
        //               fontWeight: FontWeight.w700),
        //           textAlign: TextAlign.center,
        //         ))),
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: <Widget>[
        //     const Text("Columnt 1"),
        //     Text("Columnt 2"),
        //     Text("Columnt 3"),
        //     Text("Columnt 4"),
        //     Row(
        //       children: const <Widget>[
        //         Text("Row 1"),
        //         Text("Row 2"),
        //         Text("Row 3")
        //       ],
        //     )
        //   ],
        // ),
        body: Container(
          color: Colors.red,
          margin: const EdgeInsets.fromLTRB(16, 10, 16, 10),
          // padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
          padding:
              const EdgeInsets.only(bottom: 20, top: 20, left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.amber,
                      Colors.blue,
                    ])),
            // color: Colors.blue,
            // child: const Text("Text"),
          ),
        ),
      ),
    );
  }
}

class TextStyleWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter TextStyles"),
        ),
        body: const Center(
          child: Text(
            "Hello World",
            style: TextStyle(
                color: Colors.blue,
                fontFamily: 'B',
                // fontStyle: FontStyle.italic,
                // fontWeight: FontWeight.w800,
                fontSize: 70),
          ),
        ),
      ),
    );
  }
}

class AppListTest extends StatefulWidget {
  const AppListTest({super.key});

  @override
  State<AppListTest> createState() => _AppListTestState();
}

class _AppListTestState extends State<AppListTest> {
  List<Widget> listWidget = [];
  int counter = 1;
  // _AppListTestState() {
  //   for (int i = 0; i < 105; i++)
  //     listWidget.add(Text("Hello World" + i.toString()));
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter List View"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        listWidget
                            .add(Text("Hello World - " + counter.toString()));
                        counter++;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.only(left: 16, right: 16)),
                    child: const Text("Add Data"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        listWidget.removeLast();
                        counter--;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.red[100],
                        padding: const EdgeInsets.only(left: 16, right: 16)),
                    child: const Text("Delete Data"),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: listWidget,
            )
          ],
        ),
      ),
    );
  }
}

class MyAnimateContainer extends StatefulWidget {
  const MyAnimateContainer({super.key});

  @override
  State<MyAnimateContainer> createState() => _MyAnimateContainerState();
}

class _MyAnimateContainerState extends State<MyAnimateContainer> {
  Random randomObj = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Animate container"),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              color: Color.fromARGB(255, randomObj.nextInt(256),
                  randomObj.nextInt(256), randomObj.nextInt(256)),
              duration: const Duration(seconds: 1),
              width: 50.0 + randomObj.nextInt(110),
              height: 50.0 + randomObj.nextInt(110),
            ),
          ),
        ),
      ),
    );
  }
}

class MyFlexibleWidget extends StatefulWidget {
  const MyFlexibleWidget({super.key});

  @override
  State<MyFlexibleWidget> createState() => _MyFlexibleWidgetState();
}

class _MyFlexibleWidgetState extends State<MyFlexibleWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Flutter Flexible Widget"),
          ),
          body: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          color: Colors.amber[900],
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          color: Colors.amber[400],
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          color: Colors.amber[100],
                        ))
                  ],
                ),
              ),
              Flexible(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5, left: 5, right: 5),
                    color: Colors.amber,
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5, left: 5, right: 5),
                    color: Colors.brown,
                  ))
            ],
          )),
    );
  }
}

class MyStackAndAlignWidget extends StatefulWidget {
  const MyStackAndAlignWidget({super.key});

  @override
  State<MyStackAndAlignWidget> createState() => _MyStackAndAlignWidgetState();
}

class _MyStackAndAlignWidgetState extends State<MyStackAndAlignWidget> {
  List<Widget> listText = [];

  void addingList() {
    for (int i = 0; i < 100; i++) {
      listText.add(Text("ini adalah lapisan tengah : $i"));
      // listText.add(Container(
      //   child: Text("ini adalah lapisan tengah : $i"),
      // ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Stack and Align"),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.amber,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.black12,
                            ))
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.black12,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.amber,
                            ))
                      ],
                    ))
              ],
            ),
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ini adalah tampilan tengah.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ini adalah tampilan tengah.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ini adalah tampilan tengah.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ini adalah tampilan tengah.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ini adalah tampilan tengah.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ini adalah tampilan tengah.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ini adalah tampilan tengah.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ini adalah tampilan tengah.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ini adalah tampilan tengah.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ini adalah tampilan tengah.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ini adalah tampilan tengah.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ini adalah tampilan tengah.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ini adalah tampilan tengah.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ini adalah tampilan tengah.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ini adalah tampilan tengah.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ini adalah tampilan tengah.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ini adalah tampilan tengah.",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ini adalah tampilan tengah.",
                        style: TextStyle(fontSize: 30),
                      ),
                    )
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.green,
                    backgroundColor: Colors.blue),
                child: Text(
                  "Button",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyImageView extends StatefulWidget {
  const MyImageView({super.key});

  @override
  State<MyImageView> createState() => _MyImageViewState();
}

class _MyImageViewState extends State<MyImageView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter ImageView"),
        ),
        body: Center(
          child: Row(
            children: [
              Flexible(
                  child: Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                child: Image(
                    image: NetworkImage(
                        "https://hips.hearstapps.com/hmg-prod/images/2024-nissan-gt-r-119-1673621285.jpg?crop=0.673xw:0.673xh;0,0.113xh&resize=1200:*")),
                width: double.infinity,
                height: 250,
                decoration: const BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    )),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class MyImageViewEriko extends StatefulWidget {
  const MyImageViewEriko({super.key});

  @override
  State<MyImageViewEriko> createState() => _MyImageViewErikoState();
}

class _MyImageViewErikoState extends State<MyImageViewEriko> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Flutter ImageView"),
      ),
      body: Center(
        child: Flexible(
            child: Column(
          children: [
            Container(
              color: Colors.black,
              width: 200,
              height: 200,
              padding: EdgeInsets.all(1),
              child: Image(
                image: NetworkImage(
                    "https://thumbs.dreamstime.com/z/businessman-using-tablet-laptop-analyzing-sales-data-economic-growth-graph-chart-business-strategy-digital-marketing-154742021.jpg"),
                fit: BoxFit.fill,
                repeat: ImageRepeat.repeat,
              ),
            ),
            Container(
                color: Colors.black,
                width: 200,
                height: 200,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                child: Image(
                  image: AssetImage("asset/design_01.png"),
                ))
          ],
        )),
      ),
    ));
  }
}

class MyDragAndDrop extends StatefulWidget {
  const MyDragAndDrop({super.key});

  @override
  State<MyDragAndDrop> createState() => _MyDragAndDropState();
}

class _MyDragAndDropState extends State<MyDragAndDrop> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter drag and drop")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: color1,
                  feedback: SizedBox(
                    width: 150,
                    height: 50,
                    child: Material(
                      color: Colors.black38.withOpacity(0.5),
                      shape: StadiumBorder(),
                      elevation: 15,
                    ),
                  ),
                  child: SizedBox(
                    width: 150,
                    height: 50,
                    child: Material(
                      color: Colors.blue,
                      shape: StadiumBorder(),
                      elevation: 15,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 150,
                    height: 50,
                    child: Material(
                      color: Colors.black12,
                      shape: StadiumBorder(),
                      elevation: 10,
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: Material(
                    color: Colors.red,
                    shape: StadiumBorder(),
                    elevation: 10,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
