import "package:flutter/material.dart";

class ReusableCard extends StatelessWidget {
//  const ReusableCard({Key key,}) : super(key: key);

  // custom constructor + mark parameter as required!
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour; // final = immutable (can't change!)
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
