



import 'package:flutter/material.dart';
import 'package:swipeable_card_stack/swipe_controller.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class Home_screen extends StatefulWidget {
//  Home_screen({Key? key, required this.title}) : super(key: key);
  //final String title;

  @override
  _Home_screenState createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  int counter = 1;
  List <Color>l1 =[

    Colors.deepPurpleAccent,
    Colors.white24,
    Colors.red,
    Colors.redAccent,
    Colors.teal,
    Colors.tealAccent,
    Colors.yellow,
    Colors.indigo,
    Colors.indigoAccent,
    Colors.purpleAccent,
    Colors.purple,
    Colors.pink,
    Colors.pinkAccent,
    Colors.amber,
    Colors.deepPurple,
    Colors.deepOrange,
    Colors.green,
    Colors.lightGreen,
    Colors.lightGreenAccent,
    Colors.lime,
    Colors.limeAccent,
    Colors.cyanAccent,
    Colors.cyan,
    Colors.blue,
    Colors.black,
    Colors.blueGrey,
    Colors.brown,
    Colors.lightBlue,
    Colors.lightGreenAccent,
    Colors.tealAccent,
    Colors.yellowAccent,
    Colors.deepOrangeAccent,
  ];


  @override
  Widget build(BuildContext context) {
    SwipeableCardSectionController _cardController = SwipeableCardSectionController();
    //  c1 (

    // );
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SwipeableCardsSection(
            cardController: _cardController,
            context: context,
            items: [
              Container(
                height: 600,
                width: 600,
                color: Colors.greenAccent,
              ),
              Container(
                height: 500,
                width: 350,
                color: Colors.green,
              ),
              Container(
                height: 500,
                width: 350,
                color: Colors.orange,
              ),
            ],
            onCardSwiped: (dir, index, widget) {
              if (counter <= l1.length) {
                _cardController.addItem(Container(height: 500,width: 350,color:l1[index]));
                counter++;
              }
            },

            enableSwipeUp: false,
            enableSwipeDown: false,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  child: Icon(Icons.chevron_left),
                  onPressed: () => _cardController.triggerSwipeLeft(),
                ),
                FloatingActionButton(
                  child: Icon(Icons.chevron_right),
                  onPressed: () => _cardController.triggerSwipeRight(),
                ),
                FloatingActionButton(
                  child: Icon(Icons.arrow_upward),
                  onPressed: () => _cardController.triggerSwipeUp(),
                ),
                FloatingActionButton(
                  child: Icon(Icons.arrow_downward),
                  onPressed: () => _cardController.triggerSwipeDown(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
