import 'package:flutter/material.dart';
import 'package:responsive_app/resposive/desktop_scaffold.dart';
import 'package:responsive_app/resposive/mobile_scaffold.dart';
import 'package:responsive_app/resposive/responsive_layout.dart';
import 'package:responsive_app/resposive/tablet_scaffold.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
      mobileScaffold: MobileScaffold(),
      tabletScaffold: TabletScaffold(),
      desktopScaffold: DesktopScaffold()
    ),
    );
  }
}
