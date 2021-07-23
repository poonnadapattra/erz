import 'package:erz_app/untilities/rotate.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class CollectionCard extends StatelessWidget {


  @override
   Widget build(BuildContext context) {
      List<String> list = ['one', 'two', 'three', 'four', 'one', 'two', 'three', 'four', 'one', 'two', 'three', 'four', 'one', 'two', 'three', 'four'];
      List<Widget> widgets = list.map((name) => new Text(name + ' ', style: Theme.of(context).textTheme.subtitle2)).toList();
      
      return Container(
        width: double.infinity,
        child: Card(
          margin: EdgeInsets.only(top:5, left: 5, right: 5),
          child: InkWell(
            onTap: () {
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Card ONE ONE', style: Theme.of(context).textTheme.headline6),
                    Rotate(
                      child: PopupMenuButton(
                        itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                          const PopupMenuItem(
                            value: WhyFarther.harder,
                            child: Text('Pin'),
                          ),
                          const PopupMenuItem(
                            value: WhyFarther.selfStarter,
                            child: Text('Delete'),
                          ),
                        ],
                      ),
                    )
                  ]
                ),
                Text('describer', style: Theme.of(context).textTheme.subtitle1),
                Wrap(
                  children: widgets
                )
              ],
             ),
         ),
          )
       ),
     );
   }
}