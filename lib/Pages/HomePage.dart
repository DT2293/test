import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/Widgets/AppbarWidget.dart';
import 'package:foodapp/Widgets/CategoriesWidget.dart';
import 'package:foodapp/Widgets/PopularItemsWidget.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: ListView(
         children: [
           AppbarWidget(),

/*search*/  Padding(padding: EdgeInsets.symmetric(
            vertical: 10, 
            horizontal:15),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0,3),
                  ),
                ]),
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [

                        Icon(CupertinoIcons.search,color: Colors.red),//1

                        Container(//2
                          height: 50,
                          width: 300,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Search here",
                                border: InputBorder.none
                              ),
                            ),
                          ),
                          ),

                        Icon(Icons.filter_list),//3


                      ],
                    ),

                  ),

            )
            ),
            
          //category
          Padding(padding: EdgeInsets.only(top:20,left: 10,bottom: 10),
          child: Text("Categories",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          ),
          CategoriesWidget(),
          //popular items
          Padding(padding: EdgeInsets.only(top:20,left: 10),
          child: Text("Popular items",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          ),

          PopularItemsWidget(),
        
         ],
      )
    );
    
  }


}