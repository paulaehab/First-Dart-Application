import 'package:flutter/material.dart';
import '../procuct_manager.dart';
import './product_admin.dart';

class ProductsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: Drawer(child: Column(children: <Widget>[
        AppBar(
          automaticallyImplyLeading: false,// to make the closing of the app bar 
          title: Text('Choose'),
        ),
        ListTile(
          title: Text('Manage Products'),
        onTap: (){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => Admin()),
          );
        }
        ,)
      ],),),
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: ProductManager(''),
      );
  }
}