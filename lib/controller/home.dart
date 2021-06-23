import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatefulWidget {
  const home({Key key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int indexselect=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(),
      bottomNavigationBar: Row(
        children: [
          nav(Icons.menu_book,"Reciptes",1),
          nav(Icons.search,"Search",2),
          nav(Icons.add_shopping_cart,"car",3),
          nav(Icons.favorite,"favorite",4),
          nav(Icons.account_circle,"Profile",5)
        ],
      ),
    );
  }
  Widget nav(IconData icon ,var label,int index){
    var screenwdith=MediaQuery.of(context).size.width;
  return GestureDetector(
    onTap: (
        ){
      setState(() {
        indexselect=index;
      });
    },
    child: Container(
      width: screenwdith/5,
      height: 60,
      child: Column(
        children: [
          Icon(icon,color: indexselect==index ? Colors.green:Colors.black,),
          Text(label,style: GoogleFonts.lato(color: indexselect==index ? Colors.green:Colors.black ),)
        ],
      ),
    ),
  );
  }

}
