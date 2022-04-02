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
      t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: secendcolor,
        onPressed: add,
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      backgroundColor: maincolor,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  enabled: false,
                  hintText: "Task",
                  fillColor: textcolor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                style: const TextStyle(color: secendcolor),
                controller: t1,
              ),
            ),
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
                                style: const TextStyle(color: textcolor),
                              ),
                              IconButton(
                                color: Colors.red,
                                icon: const Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    hehe.removeAt(index);
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
          ],
        ),
      ),
    );
  }
}
