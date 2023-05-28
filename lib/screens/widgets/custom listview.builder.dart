import 'package:flutter/cupertino.dart';
import 'package:notes_app/screens/widgets/custom%20card.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context,index){
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical: 4),
          child: CustomCard(),
        );
     },
    );
  }
}
