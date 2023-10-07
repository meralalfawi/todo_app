import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/my_theme.dart';
import 'package:todo_app/settings/settings_tab.dart';
import 'package:todo_app/task_list/add_task_bottomSheet.dart';
import 'package:todo_app/task_list/task_list_tab.dart';

class HomeScreen extends StatefulWidget {
static const String routeName = 'homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int selectedindex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do list' , style:Theme.of(context).textTheme.titleLarge),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: selectedindex,
            onTap: (index){
            selectedindex = index ;
            setState(() {

            });
            },
            items: [
          BottomNavigationBarItem(icon: Icon(Icons.list) , label: 'tasks list'),
          BottomNavigationBarItem(icon: Icon(Icons.settings) , label: 'tasks list')
        ]),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showAddTaskBottomSheet();
      } ,
          child: Icon(Icons.add , size: 30,)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: tabs[selectedindex],
    ) ;
  }
  List<Widget> tabs=[
    TaskListTab() , SettingsTab()
  ];
 void showAddTaskBottomSheet() {
   showModalBottomSheet(context: context, builder: ((context) => AddTaskBottomSheet() ));
 }

}

