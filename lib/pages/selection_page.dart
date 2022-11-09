import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  DateTime date = DateTime(2022, 12, 24);

  @override
  Widget build(BuildContext context)=> Scaffold(
 body: Center (
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center 
  children:   [
    Text(
    '${date.year}/${date.month}/${date.day}',
    style: TextStyle (fontSize: 32),
    ),
    const SizedBox(height: 16),
    ElevatedButton(
      child: Text('select date') ,  
      onPressed:  () async {
        DateTime? newDate= await ShowDatePicker(
          context: context,
          initialDate: date,
          firsDate: DateTime (1900),
          lastDate: DateTime (2100),
          );
          if (newDate == null) return;
          setState (()=> date = newDate);
        

         },
        )
        ],
        )
       )
      );
     }