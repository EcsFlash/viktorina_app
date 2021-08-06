import 'package:flutter/material.dart';
import 'package:viktorina_app/Tools/Helper.dart';
class HelpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
          onPressed: (){
            print('here we are go');
            showDialog(context: context, builder: (_) => HelpMenu(context: context));
          },
          icon: Icon(Icons.help_outline)
          //icon: Icon(Icons.flutter_dash)
      ),
    );
  }
}

Widget HelpMenu({required BuildContext context}){
  return Dialog(
    backgroundColor: Colors.transparent,
    child: Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)),),
      color: Colors.lightBlueAccent,
      child: Container(
        height: Helper.getHeight(factor: 0.65, context: context),
        width: Helper.getWidth(factor: 1.5, context: context),
        clipBehavior: Clip.none,
        color: Colors.transparent,
        child: Column(
          children: [
             Padding(
               padding: const EdgeInsets.only(top: 10.0),
               child: Text("Помощь", style: TextStyle(fontSize: 18),),
             ),
            Padding(
              padding: const EdgeInsets.only(top: 6.0, bottom: 4.0, left: 4.0, right: 4.0),
                child: Material(
                    child: Container(
                        padding: EdgeInsets.only(right: 10, left: 10, top: 25),
                        height: Helper.getHeight(factor: 0.59, context: context),
                        width: Helper.getWidth(factor: 1, context: context),
                        child: Center(
                          child: Column(
                            children: [
                              myTableRow(name: 'Восстановить жизнь:', cost: 10),
                              SizedBox(height: Helper.getHeight(context: context, factor: 0.01),),
                              myTableRow(name: 'Подсказка 50/50:', cost: 10),
                              SizedBox(height: Helper.getHeight(context: context, factor: 0.01),),
                              myTableRow(name: 'Пропустить вопрос:', cost: 10),
                              SizedBox(height: Helper.getHeight(context: context, factor: 0.01),),
                            ],
                          ),
                        )
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),),
                ),
              ),
          ],
        )
      ),
    ),
  );
}


Widget myTableRow({required String name, required int cost}){
  return Material(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),),
    color: Colors.grey[400],
    child: Container(
      padding: EdgeInsets.all(5.0),
      //color: Colors.white10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$name', style: TextStyle(fontSize: 18),),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),),
            ),
            onPressed: (){

            },
            child: Container(child: Row(
              children: [
                Text('$cost', style: TextStyle(fontSize: 18),),
                Icon(Icons.star)
              ],
            )),
          ),
        ],
      ),
    ),
  );
}