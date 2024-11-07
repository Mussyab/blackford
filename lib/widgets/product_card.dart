import 'package:blackford/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget productCard({
  required String name,
  required String author,
  required String price,
  required String image,
  required List<String> tags,
  required BuildContext context,
  required int index,
}) {
  return Container(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            height: 150,
            width: 80,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Get.width * 0.5,
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: 8),
            Text(
              author,
              style: TextStyle(
                color: AppColor.white,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 12),
            Text(
              "\$$price",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Spacer(),
            SizedBox(
              height: 30,
              child: ListView.builder(
                itemCount: tags.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, tagIndex) => Container(
                  margin: EdgeInsets.only(right: 8),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 146, 98, 25),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    tags[tagIndex],
                    style: TextStyle(
                      color: Color(0xFFD5AC64),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
