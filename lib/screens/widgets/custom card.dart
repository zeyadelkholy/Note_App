import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, 'EditNoteScreen');
      },
      child: Container(
        padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          ListTile(
            title: Text('Flutter Tips',style: TextStyle(color: Colors.black,fontSize: 26),),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text('hi ya shab77',style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 18),),
            ),
            trailing: IconButton(
              onPressed: (){}, icon: Icon(Icons.delete,color: Colors.black,size: 26,),

            )

          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text('may21,2022',style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(.5)),),
          ),

        ],
        ),
      ),
    );
  }
}
