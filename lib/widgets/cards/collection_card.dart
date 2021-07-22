import 'package:erz_app/untilities/rotate.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class CollectionCard extends StatelessWidget {

  @override
   Widget build(BuildContext context) {
     return Container(
       width: double.infinity,
       height: 130,
       child: Card(
         margin: EdgeInsets.only(top:5, left: 5, right: 5),
         child: Column(
           children: <Widget>[
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Card ONE'),
                Rotate(
                  child: IconButton(
                  icon: const Icon(Icons.more_horiz),
                  onPressed: () {
                  },
                )
                )
              ]
             )
           ],
         )
       ),
     );
   }
}