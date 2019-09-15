import 'package:flutter/material.dart';
import './products.dart';
import './product_create.dart';
import './product_list.dart';

class Admin extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    
    return 
    DefaultTabController(
length: 2// determine how much tabs will be in the page 
    ,child:Scaffold(
       drawer: Drawer(child: Column(children: <Widget>[
        AppBar(
          automaticallyImplyLeading: false,// to make the closing of the app bar 
          title: Text('Choose'),
        ),
        ListTile(
          title: Text('All Products'),
        onTap: (){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => ProductsPage()),
          );
        }
        ,)
      ],),),
      appBar: AppBar(
        bottom: TabBar(tabs: <Widget>[
          Tab(
            text: 'Create products',
            icon: Icon(Icons.create),
          ),
          Tab(
            text:'My products',
            icon: Icon(Icons.list),
            ),
        ],),
        title: Text('Manage Products'),
      ),
      body: 
      
      Center(
         child: TabBarView(   //this is for navigation between tabs
           children: <Widget>[
             ProductCreatePage(),
             ProductListPage(),

           ],
         ), 
        ) 
    ),);
  }

}