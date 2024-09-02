import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todolist/constants/colors.dart'; // Make sure to import your colors file
import 'package:todolist/model/todo.dart';
import 'package:todolist/widget/todo_item.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

  final todosList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
            child: Column(
              children: [
                searchBox(),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50,bottom: 20),
                        child: Text('All ToDos',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
                    ),
          
                    for (ToDo todoo in todosList)
                      TodoItem(todo: todoo,),
          
                  ],
                )
                )
                // Add other widgets as needed
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(children: [
              Expanded(child: Container(margin: EdgeInsets.only(bottom: 20,right: 20,left:20,),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical:5 ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey,offset: Offset(0.0, 0.0),
                blurRadius: 10.0,
                spreadRadius: 0.0,),],
                borderRadius: BorderRadius.circular(10),
              ),
              child:TextField(
                decoration: InputDecoration(
                  hintText: "Add new ToDo item",
                  border: InputBorder.none
                )
              )
              ))
            ],),
          )
        ],
      ),
    );
  }

  Widget searchBox(){
    return  Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0), 
                  prefixIcon: Icon(Icons.search,color: tdBlack,size: 20,),
                  prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),// Adjust padding as needed
                  hintText: 'Search',
                  hintStyle: TextStyle(color: tdGrey),
                  border: InputBorder.none, // Remove border
                ),
              ),
            );
  }


  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu, color: Colors.black, size: 30),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Icon(Icons.person), // Example icon, replace with your own
            ),
          ),
        ],
      ),
    );
  }
}
