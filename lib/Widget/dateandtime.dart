 import 'package:flutter/material.dart';

 class DateWidget extends StatefulWidget {
   const DateWidget({super.key,this.title});
   final String? title;

   
     @override
     State<DateWidget> createState() =>  _DateWidgetState();
}

    class _DateWidgetState extends State<DateWidget> {
     DateTime selectedDate = DateTime.now();

 Future<Null> _selectDate(BuildContext context) async {
final DateTime? picked = await showDatePicker(
   context: context,
initialDate: selectedDate,
 firstDate: DateTime(2015, 8),
 lastDate: DateTime(2101));
if (picked != null && picked != selectedDate) {
  setState(() {
selectedDate = picked;
}
);
}

}

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
    ),
    body: Center(
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("tanggal saiki${selectedDate.toLocal().toString().split(" ")[0]}"),
          const SizedBox(height: 20.0,),
          ElevatedButton(onPressed: () => {
            _selectDate(context),
            print(selectedDate.day  +
              selectedDate.month+
              selectedDate.year)
          },
          child: const Text('pilih tanggal'),
          ),
        ],
      ),
      ),
   );

  
  } 
    }