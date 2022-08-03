import 'package:flutter/material.dart';
import 'package:responsive_app/resposive/constant.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultColor,
      appBar: myAppBar,
      body: Row(children: [
        //open drwaer
        myDrawer,

        //rest of code
        Expanded(
          flex: 2,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 4,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    itemBuilder: (context, index) {
                      return MyBox();
                    },
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const MyTile();
                      }))
            ],
          ),
        ),
        Expanded(
            child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.pink,
              ),
            )
          ],
        ))
      ]),
    );
  }
}
