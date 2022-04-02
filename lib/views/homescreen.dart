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
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
      backgroundColor: maincolor,
      body: Padding(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                cursorColor: secendcolor,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: secendcolor),
                  ),
                  hintText: "Task",
                  fillColor: textcolor,
                  filled: true,
                  focusColor: secendcolor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                style: TextStyle(color: secendcolor),
                controller: t1,
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemCount: hehe.length,
                itemBuilder: ((context, index) => Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: secendcolor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 75,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
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
