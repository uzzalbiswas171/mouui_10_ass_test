import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SelectionScreen(),
    );
  }
}

class SelectionScreen extends StatefulWidget {
  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  List<String> items1=["sdf"] ;
  List<String> items2 =["sad"];
  TextEditingController _TE1=TextEditingController();
  TextEditingController _TE2=TextEditingController();
  Set<String> selectedItems = Set<String>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selection Screen'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(
          20
        ),
        child: Column(
          children: [
            SizedBox(height: 10,),
           TextFormField(
             controller: _TE1,
             decoration: InputDecoration(
               hintText: "Type here"
             ),
           ),
            SizedBox(height: 10,),
            TextFormField(
              controller: _TE2,
             decoration: InputDecoration(
               hintText: "Type here"
             ),
           ), SizedBox(height: 10,),

            Container(
              height: 50,
              width: double.infinity,
            //  color: Colors.green,
              alignment: Alignment.topRight,
              child: ElevatedButton(onPressed: () {
                setState(() {
                  items1.add(_TE1.text);
                  items2.add(_TE2.text);
                });
              }, child: Text("Add")),
            ),
            SizedBox(height: 10,),
            Expanded(flex: 3,child: Container(
              child: ListView.builder(
                  itemCount: items1.length,
                itemBuilder:(context, index) {
                return Card(
                  color: Colors.amber.shade50,
                  child: ListTile(
                    leading:Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.lightGreenAccent,
                          borderRadius: BorderRadius.circular(30)),
                    ) ,

                    title: Text("${items1[index]}"),
                    subtitle: Text("${items1[index]}"),
                    trailing: IconButton(onPressed: () {
                      
                    }, icon: Icon(Icons.arrow_circle_right_outlined)),
                  ),
                );
              },),
              )),
          ],
        ),
      ),

    );
  }
}
