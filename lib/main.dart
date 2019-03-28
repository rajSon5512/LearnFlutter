import 'package:flutter/material.dart';

 void main(){
   runApp(new MyApp());
 }
/*

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(             // materialAoo  
      title: "Love you flutter",
      home: new Scaffold(                      //scaffold provide black structure of page

        appBar: new AppBar(
          title: new Text("Love You Flutter"),
        ),
       body: new Center(child: new Text("hello world")),
      ),
    ); // black page
  }
}
*/

 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return new MaterialApp(
        title: "MyApp",
        home:  new HomePage(),
       theme: new ThemeData(
         primaryColor: Colors.green,
         brightness: Brightness.light,
         accentColor: Colors.red
       ),

     );

   }
 }

 class HomePage extends StatefulWidget {
   @override
   _HomePageState createState() =>new _HomePageState();
 }


 class _HomePageState extends State<HomePage> {

   String myText="hello world";

   void _changeText(){

     setState(() {

       if(myText.startsWith('h')){
         myText="Welcome My First Flutter Application";
       }else{
         myText="hello world";
       }
     });

   }


   Widget _bodywidget(){
     return new Container(
       padding: const EdgeInsets.all(8.0),
       child: new Center(
         child: new Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             new Text(myText,style: new TextStyle(
               fontSize: 18.0,
             ),)
             /*new RaisedButton(
               child: new Text("Click"),
               color: Colors.lightBlueAccent,
               onPressed: _changeText,
             )*/
           ],
         ),
       ),
     );;

   }


   @override
   Widget build(BuildContext context) {
     return new Scaffold(
       appBar: new AppBar(
         title: new Text("Home Page Live"),
       ),
        body: _bodywidget(),
       floatingActionButton: new FloatingActionButton(
         child: new Icon(Icons.add),
         onPressed: _changeText,
       ),
     );
   }
 }

