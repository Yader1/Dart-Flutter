import 'package:flutter/material.dart';
import 'package:platzi_course_application/widget/Review.dart';
class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/people.jpg", "Varuna Yasas", "1 review · 5 photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/ann.jpeg", "Anahí Salgado", "2 review · 5 photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/girl.jpeg", "Gissele Thomas", "2 review · 2 photos", "There is an amazing place in Sri Lanka"),
      ],
    );
  }
}