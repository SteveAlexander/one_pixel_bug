import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'type something'
                )
              ),
              Expanded(
                child: CustomScrollView(
                  // shrinkWrap: true,
                  slivers: [
                    SliverStickyHeader(
                      header: Container(
                        color: Colors.orange,
                        height: 30.0,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(horizontal: 50.0),
                        child: Text('header')
                      ),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return Container(
                              height: 30.0,
                              color: index.isEven ? Colors.green : Colors.green[600]
                            );
                          }
                        )
                      )
                    )
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }
}
