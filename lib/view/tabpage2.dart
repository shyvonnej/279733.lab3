import 'package:flutter/material.dart';
import 'dart:io';

class TabPage2 extends StatefulWidget {
  const TabPage2({Key? key}) : super(key: key);

  @override
  State<TabPage2> createState() => _TabPage2State();
}

class _TabPage2State extends State<TabPage2> {
  @override
  Widget build(BuildContext context) { 
    return Scaffold(        
      body: Center(
      child: Column(children: [
        Flexible(flex: 5,
        child: Container(color: Colors.blueGrey[900])),
        Flexible(
          flex: 5,
          child: Column(
            children: [
              Container(
              color: Colors.tealAccent,
              child: const Center(
                child: Text("PROFILE", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
              ))),
              Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                shrinkWrap: true,
                children: [
                  const MaterialButton(
                    onPressed: null,
                    child: Text("EDIT PROFILE"),
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.tealAccent,
                  ),
                  const MaterialButton(
                    onPressed: null,
                    child: Text("HISTORY"),
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.tealAccent,
                  ),
                  const MaterialButton(
                    onPressed: null,
                    child: Text("NEW REGISTERATION"),
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.tealAccent,
                  ),
                  const MaterialButton(
                    onPressed: null,
                    child: Text("LOGIN"),
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.tealAccent,
                  ),
                  MaterialButton(
                    onPressed: ()=> exit(0),
                    child: const Text("EXIT"),
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.tealAccent,
                  ),
                ]
              )
            )],
          )
        )
      ],)
      )
    );
  }
}