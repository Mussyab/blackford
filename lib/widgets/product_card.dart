import 'package:blackford/utilities/colors.dart';
import 'package:flutter/material.dart';

Widget productCard({
  name,
  author,
  price,
  image,
  tags,
}) {
  return Container(
    
    color: Colors.red,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            height: 150,
            width: 100,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
            ),
            SizedBox(height: 10),
            Text(
              author,
            ),
            Text(
              price,
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: AppColor.primarycolor,
              ),
              height: 25,
              child: Text("Design"),
            )
          ],
        ),
      ],
    ),
  );
}
