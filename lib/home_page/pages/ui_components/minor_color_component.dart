import 'package:flutter/material.dart';


class MinorColor extends StatefulWidget {
  final List<dynamic> minorColor;
  const MinorColor({super.key , required this.minorColor});

  @override
  State<MinorColor> createState() => _MinorColorState();
}

class _MinorColorState extends State<MinorColor> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context , index){
        return Container(
          margin:const EdgeInsets.only(top: 30 , bottom: 30 , left: 20 , right: 20),
          width: 100,
          height: 30,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black)
          ),
          color: Color(widget.minorColor[index]),
        );
      } , scrollDirection: Axis.horizontal,itemCount: 1,),
    );
  }
}