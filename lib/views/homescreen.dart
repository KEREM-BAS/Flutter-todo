// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:todo/config/colors.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TextEditingController t1 = TextEditingController();
  List hehe = [];
  add() {
    setState(() {
      hehe.add(t1.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: hehe.length,
                itemBuilder: ((context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: secendcolor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 75,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                hehe[index],
                                style: TextStyle(color: textcolor),
                              ),
                              IconButton(
                                color: Colors.red,
                                icon: Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    hehe.remove(index);
                                  });
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
              ),
            ),
            TextField(
              style: TextStyle(color: textcolor),
              controller: t1,
            ),
            FloatingActionButton(onPressed: add)
          ],
        ),
      ),
    );
  }
}
