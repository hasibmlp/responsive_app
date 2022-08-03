import 'package:flutter/material.dart';

var myAppBar = AppBar(
        backgroundColor: const Color.fromARGB(255, 43, 46, 49),
      );

var myDrawer = Drawer(
        backgroundColor: const Color.fromARGB(255, 230, 224, 224),
        child: Column(children: const [
          DrawerHeader(child: Icon(Icons.favorite)),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('H O M E'),
          ),ListTile(
            leading: Icon(Icons.message),
            title: Text('M E S S A G E'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('S E T T I N G'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('L O G O U T'),
          )
        ]),
      );
var myDefaultColor = const Color.fromARGB(255, 240, 236, 236);