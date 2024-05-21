import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imithon_2_oy/pages/explore_detail_page.dart';
import 'package:flutter_imithon_2_oy/utils/explore_products_list.dart';
import 'package:flutter_imithon_2_oy/utils/explore_saved_list.dart';

class ExploreProduct extends StatefulWidget {
  final Map<String, dynamic> product;
  ExploreProduct({required this.product});

  @override
  State<ExploreProduct> createState() => _ExploreProductState();
}

class _ExploreProductState extends State<ExploreProduct> {
  @override
  Widget build(BuildContext context) {
    widget.product["isLiked"] =
        exploreSavedList.contains(widget.product) ? true : false;
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ExploreDetailPage(exploreProduct: widget.product)));
      },
      child: Container(
        padding: EdgeInsets.all(16),
        width: 160,
        height: 200,
        decoration: BoxDecoration(
          // color: Color(0xffDAE3E0),
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(
                widget.product["room"],
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  if (widget.product["isLiked"] == true) {
                    exploreSavedList
                        .removeWhere((element) => element == widget.product);
                  } else {
                    exploreSavedList.add(widget.product);
                  }
                });
              },
              child: Container(
                padding: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: widget.product["isLiked"]
                    ? Icon(
                        CupertinoIcons.heart_fill,
                        color: Colors.grey.shade400,
                      )
                    : Icon(
                        CupertinoIcons.heart,
                        color: Colors.grey.shade400,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
