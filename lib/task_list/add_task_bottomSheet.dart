import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatefulWidget {

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  DateTime selectedDate = DateTime.now();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Text('add new task' , style: Theme.of(context).textTheme.titleMedium,),
          Form(
            key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (text){
                    if(text==null || text.isEmpty){
                    return 'Please enter a valid title';
                    }
                    return null ;
                  },
                  decoration: InputDecoration(
                  hintText: 'Enter Task Title'
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (text){
                    if(text==null || text.isEmpty){
                      return 'Please enter a valid description';
                    }
                    return null ;
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter Task Description'
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Select Date' , style: Theme.of(context).textTheme.titleSmall,),
              ),
              InkWell(
                onTap: (){
                  showCalendar();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',style: Theme.of(context).textTheme.titleSmall ,
                    textAlign: TextAlign.center,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  addTask();
                }, child: Text('Add',
                    style: Theme.of(context).textTheme.titleLarge)),
              )
            ],
          ))
        ],
      ),

    );
  }

  void showCalendar()async {
  var chosenDate = await  showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days :365)));
  if(chosenDate!=null){
    selectedDate = chosenDate ;
  }
  setState(() {

  });
  }

  void addTask() {
    if(formKey.currentState?.validate()==true){

    }
  }
}
