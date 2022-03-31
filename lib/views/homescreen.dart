import 'package:flutter/material.dart';
import 'package:todo/config/colors.dart';

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

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
      body: Container(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: hehe.length,
                itemBuilder: ((context, index) => Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width - 20,
                    )),
              ),
            ),
            TextField(
              controller: t1,
            ),
            FloatingActionButton(onPressed: add)
          ],
        ),
      ),
    );
  }
}
